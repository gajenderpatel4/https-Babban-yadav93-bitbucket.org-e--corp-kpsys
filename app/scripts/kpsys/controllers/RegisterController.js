'use strict';

angular.module('kpsysApp').controller('RegisterCtrl', function ($scope, $rootScope, $window, $state, $translate, RegisterService, AUTH_EVENTS, InternationalizationConstants, Session) {

    $scope.registerData = {};
    $scope.countries = {};
    $scope.country = {};
    $scope.confirmCode = null;

    $scope.submitted = [false, false, false];
    $scope.invalidConfirmCode = false;
    $scope.registerError = null;

    $scope.register = function (registerData) {
        if ($scope.loading) {
            return;
        }

        $scope.submitted[0] = true;
        if ($scope.form.$invalid) {
            return;
        }

        $scope.loading = true;
        $scope.registerError = false;

        registerData.phone = $scope.country.selected.phoneCode + registerData.phoneNumber;
        RegisterService.register(registerData).then(function (res) {
            $window.localStorage.phone = res.data.phone;
            $rootScope.$broadcast(AUTH_EVENTS.registerSuccess);
            $scope.loading = false;
        }, function (res) {
            $scope.registerError = $rootScope.getErrorMessage(res);
            $scope.loading = false;
        });
    };

    $scope.confirmRegistration = function (confirmCode) {
        if ($scope.loading) {
            return;
        }

        $scope.submitted[1] = true;
        if (confirmCode == null) {
            return;
        }

        $scope.loading = true;

        RegisterService.confirmRegistration({
            phone: $window.localStorage.phone,
            code: confirmCode
        }).then(function (_) {
            $scope.invalidConfirmCode = false;
            $scope.loading = false;
        }, function () {
            $scope.invalidConfirmCode = true;
            $rootScope.$broadcast(AUTH_EVENTS.confirmationFailed);
            $scope.loading = false;
        });
    };

    $scope.completeRegistration = function (password, repeatPassword) {
        if ($scope.loading) {
            return;
        }

        $scope.submitted[2] = true;
        if (password !== repeatPassword) {
            return;
        }
        if ($scope.form.$invalid) {
            return;
        }

        $scope.loading = true;

        RegisterService.completeRegistration({
            token: Session.accessToken(),
            password: password
        }).then(function (res) {
            $scope.loading = false;
        }, function () {
            $scope.loading = false;
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

        $scope.loading = false;
    }
});
