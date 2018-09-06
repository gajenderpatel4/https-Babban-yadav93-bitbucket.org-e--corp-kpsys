'use strict';


app.factory('ResetPasswordService', function ($rootScope, $http, $state, $window, AUTH_EVENTS, Session) {
    var resetPasswordService = {};

    resetPasswordService.resetPassword = function (resetPasswordData) {
        return $http
            .post('/api/auth/resetPassword', resetPasswordData)
            .success(function (res) {
                $window.sessionStorage.tenantId = res.tenantId;
                $state.go('confirmPassword');
                return res;
            })
            .error(function (res) {
                return res;
            });
    };

    resetPasswordService.confirmPassword = function (confirmPasswordData) {
        return $http
            .post('/api/auth/confirmPassword', confirmPasswordData)
            .success(function (res) {
                Session.create(res.token, res.user.userId, res.user.userType, res.user.tenant.clientId);
                $state.go('home');
                return res;
            })
            .error(function (res) {
                return res;
            })
    };

    return resetPasswordService;
});
