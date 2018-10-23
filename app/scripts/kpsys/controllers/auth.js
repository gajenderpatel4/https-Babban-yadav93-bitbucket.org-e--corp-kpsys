'use strict';

var app = angular.module('kpsysApp');
var kpsysApp = app;

app.controller('LoginCtrl', function ($scope, $rootScope, $window, $state, $translate, AUTH_EVENTS, AuthService, InternationalizationConstants) {
    $scope.language = {};
    $scope.credentials = {
        login: '',
        password: ''
    };
    $scope.login = function (credentials) {
        var language = $scope.language.selected.code;
        $translate.use(language);
        $window.localStorage.lang = language;
        $rootScope.$broadcast(AUTH_EVENTS.languageChanged);

        AuthService.login(credentials).then(function (res) {
            // current user + session
            $rootScope.$broadcast(AUTH_EVENTS.loginSuccess);
            $scope.setCurrentUser(res.data.user.userId);
            // role authorisation
            //AuthService.updateRoleAuthorisation();
            AuthService.updateParkingContractRoleAuthorisation();
        }, function () {
            $rootScope.$broadcast(AUTH_EVENTS.loginFailed);
        });

    };
    $scope.init = function () {
        $scope.languages = InternationalizationConstants.supportedLanguages.map(function (lang) {
            return {
                code: lang,
                name: InternationalizationConstants.languages[lang]
            };
        });
        var language = $window.localStorage.lang || $translate.preferredLanguage();
        $translate.preferredLanguage(language);
        $scope.language.selected = {name: InternationalizationConstants.languages[language], code: language};
        if (AuthService.isAuthenticated()) {
            $state.go('home');
        }
    };
});

app.constant('USER_ROLES', {
    all: '*',
    admin: 'admin',
    editor: 'editor'
});
