'use strict';


app.factory('RegisterService', function ($rootScope, $http, $state, $window, AUTH_EVENTS, Session) {
    var registerService = {};

    registerService.register = function (registerData) {
        return $http
            .post('/api/auth/register', registerData)
            .success(function (res) {
                $window.sessionStorage.tenantId = res.tenantId;
                $state.go('confirmRegistration');
                return res;
            })
            .error(function (res) {
                return res;
            });
    };

    registerService.confirmRegistration = function (confirmation) {
        return $http
            .post('/api/auth/confirm', confirmation)
            .success(function (res) {
                Session.create(res.token, res.user.userId, res.user.userType, res.user.tenant.clientId);
                $state.go('completeRegistration');
                return res;
            })
            .error(function (res) {
                return res;
            })
    };

    registerService.completeRegistration = function (userProfile) {
        return $http
            .post('/api/auth/completeRegistration', userProfile)
            .success(function (res) {
                $state.go('home');
                return res;
            })
            .error(function (res) {
                return res;
            })
    };

    return registerService;
});
