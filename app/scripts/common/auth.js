'use strict';

app.factory('AuthService', function ($rootScope, $http, $state, AUTH_EVENTS, Session) {
    var authService = {};

    authService.login = function (credentials) {
        return $http
            .post('/api/auth', credentials)
            .success(function (res) {
                Session.create(res.token, res.user.userId, res.user.userType, res.user.tenant.clientId);
                $state.go('home', {query: $rootScope.query || ""});
                return res.user;
            })
            .error(function () {
                Session.destroy();
            });
    };

    authService.logout = function () {
        return $http
            .post('/api/auth/logout', Session.accessToken())
            .success(function () {
                Session.destroy();
                $state.go('login');
            })
            .error(function () {
                Session.destroy();
                $rootScope.$broadcast(AUTH_EVENTS.sessionTimeout);
            });
    };

    authService.updateRoleAuthorisation = function () {
        return $http.post('/api/auth/roleAuthorisation')
            .success(function (response) {
                if (angular.isArray(response)) {
                    var roles = {};
                    response.map(function (role) {
                        roles[role.objCode] = role;
                    });
                    Session.updateAuthorisation(roles);
                } else {
                    console.log('Role authorisation response: ' + response);
                }
            })
            .error(function () {
                Session.updateAuthorisation('');
            });
    };

    authService.getStaticPages = function () {
        return $http.get('/api/editor/staticPages');
    };

    authService.isAuthenticated = function () {
        return !!Session.accessToken();
    };

    authService.hasRoleAuthorisationUser = function () {
        var authorisation = Session.getAuthorisation();
        if (authorisation == null) return false;
        return authorisation['USER'] !== undefined;
    };

    authService.hasRoleAuthorisationPages = function () {
        var authorisation = Session.getAuthorisation();
        if (authorisation == null) return false;
        return authorisation['PAGES'] !== undefined;
    };

    authService.hasRoleAuthorisation = function (role, action) {
        var authorisations = Session.getAuthorisation();
        if (authorisations == null) return false;
        var authorisation = authorisations[role];
        if (authorisation === undefined) {
            return false;
        } else {
            if (action !== undefined) {
                return authorisation[action];
            } else {
                return true;
            }
        }
    };

    authService.isAuthorized = function (authorizedRoles) {
        if (!angular.isArray(authorizedRoles)) {
            authorizedRoles = [authorizedRoles];
        }
        return (authService.isAuthenticated() && authorizedRoles.indexOf(Session.userRole) !== -1);
    };

    return authService;
});

app.service('Session', function ($http, $window) {
    this.create = function (sessionId, userId, userRole, tenantId) {
        this.id = sessionId;
        this.userId = userId;
        this.userRole = userRole;
        $window.sessionStorage.token = sessionId;
        $window.sessionStorage.user = userId;
        $window.sessionStorage.tenantId = tenantId;
    };
    this.destroy = function () {
        this.id = null;
        this.userId = null;
        this.userRole = null;
        this.tenantId = null;
        delete $window.sessionStorage.token;
        delete $window.sessionStorage.user;
        delete $window.sessionStorage.tenantId;
    };
    this.accessToken = function () {
        return $window.sessionStorage.token;
    };
    this.tenantId = function () {
        return $window.sessionStorage.tenantId;
    };
    this.updateAuthorisation = function (roleAuthorisation) {
        this.authorisation = roleAuthorisation;
        $window.sessionStorage.authorisation = JSON.stringify(roleAuthorisation);
    };
    this.getAuthorisation = function () {
        try {
            return JSON.parse($window.sessionStorage.authorisation);
        } catch (e) {
            return null;
        }
    };
});

app.factory('AuthResolver', function ($q, $rootScope, $state) {
    return {
        resolve: function () {
            var deferred = $q.defer();
            var unwatch = $rootScope.$watch('currentUser', function (currentUser) {
                if (angular.isDefined(currentUser)) {
                    if (currentUser) {
                        deferred.resolve(currentUser);
                    }
                    unwatch();
                } else {
                    deferred.reject();
                    $state.go('login');
                }
            });
            return deferred.promise;
        }
    };
});

app.factory('AuthInterceptor', function ($rootScope, $q, $location, $window, AUTH_EVENTS) {

    var login = function () {
        $location.path('login');
    };

    $rootScope.$on(AUTH_EVENTS.notAuthenticated, login);
    $rootScope.$on(AUTH_EVENTS.notAuthorized, login);
    $rootScope.$on(AUTH_EVENTS.sessionTimeout, login);

    return {
        responseError: function (response) {
            if (response.status === undefined) {
                // JSON parse exception etc.: should not be a case
                $rootScope.$broadcast(AUTH_EVENTS.notAuthenticated);
            } else {
                $rootScope.$broadcast({
                    401: AUTH_EVENTS.notAuthenticated,
                    403: AUTH_EVENTS.notAuthorized,
                    419: AUTH_EVENTS.sessionTimeout,
                    440: AUTH_EVENTS.sessionTimeout
                }[response.status], response);
            }
            return $q.reject(response);
        },
        request: function (config) {
            config.headers = config.headers || {};
            if ($window.sessionStorage.token) {
                config.headers.Authorization = 'Bearer ' + $window.sessionStorage.token;
            }
            config.headers.TenantId = $window.sessionStorage.tenantId;
            return config;
        }
    };
});

app.config(['$httpProvider', function ($httpProvider) {
    $httpProvider.interceptors.push('AuthInterceptor');
}]);

app.constant('AUTH_EVENTS', {
    loginSuccess: 'auth-login-success',
    loginFailed: 'auth-login-failed',
    logoutSuccess: 'auth-logout-success',
    sessionTimeout: 'auth-session-timeout',
    notAuthenticated: 'auth-not-authenticated',
    notAuthorized: 'auth-not-authorized',
    registerSuccess: 'register-success',
    registerFailed: 'register-failed',
    confirmationFailed: 'register-confirmation-failed',
    languageChanged: 'language-changed'
});

