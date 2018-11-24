'use strict';
//TODO:

angular.module('kpsysApp').controller('RegisterCtrl', function ($scope, $rootScope, $window, $state, $translate, RegisterService, AUTH_EVENTS, InternationalizationConstants, Session) {

    $scope.registerData = {};
    $scope.countries = {};
    $scope.country = {};
    $scope.confirmCode = null;

    $scope.submitted = [false, false, false];
    $scope.invalidConfirmCode = false;
    $scope.registerError = null;

    $scope.register = function (registerData) {
        $scope.submitted[0] = true;
        if ($scope.form.$invalid) {
            return;
        }
        registerData.phone = $scope.country.selected.phoneCode + registerData.phoneNumber;
        RegisterService.register(registerData).then(function (res) {
            $window.localStorage.phone = res.data.phone;
            $rootScope.$broadcast(AUTH_EVENTS.registerSuccess);
        }, function (res) {
            $scope.registerError = res.data;
        });
    };
    /*
    $scope.confirmRegistration = function (confirmCode) {
        $scope.submitted[1] = true;
        if (confirmCode == null) {
            return;
        }
        RegisterService.confirmRegistration({
            phone: $window.localStorage.phone,
            code: confirmCode
        }).then(function (_) {
            $scope.invalidConfirmCode = false;
        }, function () {
            $scope.invalidConfirmCode = true;
            $rootScope.$broadcast(AUTH_EVENTS.confirmationFailed);
        });
    };

    $scope.completeRegistration = function (password, repeatPassword) {
        $scope.submitted[2] = true;
        if (password !== repeatPassword) {
            return;
        }
        if ($scope.form.$invalid) {
            return;
        }
        RegisterService.completeRegistration({
            token: Session.accessToken(),
            password: password
        }).then(function (res) {
        }, function () {
        })
    };
    */
    $scope.init = function () {

        $scope.countries = InternationalizationConstants.supportedLanguages.map(function (lang) {
            return {
                code: lang,
                name: InternationalizationConstants.countries[lang],
                phoneCode: InternationalizationConstants.phoneCodes[lang]
            };
        });
        console.log($scope.countries);
        var language = $window.localStorage.lang || $translate.preferredLanguage();
        $translate.preferredLanguage(language);
        $scope.country.selected = {
            code: language,
            name: InternationalizationConstants.countries[language],
            phoneCode: InternationalizationConstants.phoneCodes[language]
        };
    }

});
