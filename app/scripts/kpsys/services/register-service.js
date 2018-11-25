'use strict';

angular.module('kpsysApp').service('RegisterService', function ($rootScope, $http, $state, $window, AUTH_EVENTS, Session) {
    var registerService = {};

    registerService.register = function (registerData) {
        return $http
            .post('/api/registration/register', registerData)
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
            .post('/api/registration/confirm', confirmation)
            .success(function (res) {
                Session.create(res.token, res.user.userId, res.user.userType, null/*res.user.tenant.clientId*/);
                $rootScope.setCurrentUser(res.user.userId);
                $state.go('completeRegistration');
                return res;
            })
            .error(function (res) {
                return res;
            });
    };

    registerService.completeRegistration = function (userProfile) {
        return $http
            .post('/api/registration/completeRegistration', userProfile)
            .success(function (res) {
                $state.go('home');
                return res;
            })
            .error(function (res) {
                return res;
            });
    };

    return registerService;
});
