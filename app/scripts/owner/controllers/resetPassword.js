'use strict';

app.controller('ResetPasswordCtrl', function ($scope, $rootScope, $window, $state, $translate, ResetPasswordService, AUTH_EVENTS, InternationalizationConstants, Session) {

    $scope.resetPasswordData = {};
    $scope.countries = {};
    $scope.country = {};
    $scope.confirmCode = null;

    $scope.submitted = [false, false];
    $scope.invalidConfirmCode = false;
    $scope.resetPasswordError = null;

    $scope.resetPassword = function (resetPasswordData) {
        $scope.submitted[0] = true;
        if ($scope.form.$invalid) {
            return;
        }
        resetPasswordData.phone = $scope.country.selected.phoneCode + resetPasswordData.phoneNumber;
        ResetPasswordService.resetPassword(resetPasswordData).then(function (res) {
            $window.localStorage.phone = res.data.reference;
        }, function (res) {
            $scope.resetPasswordError = res.data;
        });
    };

    $scope.confirmPassword = function (confirmCode, password, repeatPassword) {
        $scope.submitted[1] = true;
        if (confirmCode == null) {
            return;
        }
        if (password !== repeatPassword) {
            return;
        }
        if ($scope.form.$invalid) {
            return;
        }
        ResetPasswordService.confirmPassword({
            phone: $window.localStorage.phone,
            code: confirmCode,
            password: password
        }).then(function (_) {
            $scope.invalidConfirmCode = false;
        }, function () {
            $scope.invalidConfirmCode = true;
        });
    };

    $scope.init = function () {
        $scope.countries = InternationalizationConstants.supportedLanguages.map(function (lang) {
            return {
                code: lang,
                name: InternationalizationConstants.countries[lang],
                phoneCode: InternationalizationConstants.phoneCodes[lang]
            };
        });
        var language = $window.localStorage.lang || $translate.preferredLanguage();
        $translate.preferredLanguage(language);
        $scope.country.selected = {
            code: language,
            name: InternationalizationConstants.countries[language],
            phoneCode: InternationalizationConstants.phoneCodes[language]
        };
    }

});
