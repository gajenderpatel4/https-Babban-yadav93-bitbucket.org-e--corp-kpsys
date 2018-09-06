'use strict';

var app = angular.module('ownerApp', [
    'ngResource',
    'ui.router',
    'ui.bootstrap',
    'ui.bootstrap.tooltip',
    'pascalprecht.translate',
    'oc.lazyLoad',
    'ngSanitize'
]);

app.config(['$ocLazyLoadProvider', function ($ocLazyLoadProvider) {
    $ocLazyLoadProvider.config({});
}]);


app.config(['$controllerProvider', function ($controllerProvider) {
    $controllerProvider.allowGlobals();
}]);

app.factory('settings', ['$rootScope', function ($rootScope) {
    var settings = {
        layout: {
            pageSidebarClosed: false, // sidebar menu state
            pageContentWhite: true, // set page content layout
            pageBodySolid: false, // solid body color state
            pageAutoScrollOnLoad: 1000 // auto scroll to top on page load
        },
        assetsPath: '../assets',
        globalPath: '../assets/global',
        layoutPath: '../assets/layouts/layout4'
    };

    $rootScope.settings = settings;

    return settings;
}]);

app.controller('AppController', function ($scope, $rootScope, $window, AuthService) {
    $scope.$on('$viewContentLoaded', function () {
        App.initComponents(); // init core components
    });

    $rootScope.currentUser = null;
    $rootScope.isAuthorized = AuthService.isAuthorized;
    $rootScope.setCurrentUser = function (user) {
        $rootScope.currentUser = user;
        if (user !== undefined) {
            $window.sessionStorage.user = user;
        }
    };
    $rootScope.setCurrentUser($window.sessionStorage.user);


});

app.controller('HeaderController', ['$scope', 'AuthService', function ($scope, AuthService) {
    $scope.$on('$includeContentLoaded', function () {
        Layout.initHeader(); // init header
    });
    $scope.isAuthenticated = function () {
        return AuthService.isAuthenticated();
    };
    $scope.logout = function () {
        AuthService.logout();
    };
}]);

app.controller('SidebarController', function ($scope, $rootScope, $window, $translate, AuthService, AUTH_EVENTS) {

    $scope.pages = [];

    $scope.$on('$includeContentLoaded', function () {
        Layout.initSidebar();
    });

    $rootScope.$on(AUTH_EVENTS.languageChanged, function () {
    });

    $scope.init = function () {
    };

    $scope.isAuthenticated = function () {
        return AuthService.isAuthenticated();
    };

});

app.controller('QuickSidebarController', ['$scope', function ($scope) {
    $scope.$on('$includeContentLoaded', function () {
        setTimeout(function () {
            QuickSidebar.init(); // init quick sidebar
        }, 2000);
    });
}]);

app.controller('FooterController', ['$scope', function ($scope) {
    $scope.$on('$includeContentLoaded', function () {
        Layout.initFooter(); // init footer
    });
}]);

app.run(function ($rootScope, $location, settings, $state) {
    $rootScope.$state = $state; // state to be accessed from view
    $rootScope.$settings = settings; // state to be accessed from view
});

var commonDeps = ['$ocLazyLoad', function ($ocLazyLoad) {
    return $ocLazyLoad.load([
        {
            name: 'ui.select',
            insertBefore: '#ng_load_plugins_before',
            files: [
                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js',
                '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                '../assets/global/plugins/select2/css/select2.min.css',
                '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                '../assets/global/plugins/select2/js/select2.full.min.js',

                '../assets/pages/scripts/components-bootstrap-select.min.js',
                '../assets/pages/scripts/components-select2.min.js'
            ]
        }]);
}];


app.config(function ($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise("/home");

    $stateProvider
        .state('login', {
            url: '/login',
            templateUrl: 'views/owner/login.html',
            controller: 'LoginCtrl',
            data: {pageTitle: 'Login'},
            resolve: {
                deps: commonDeps
            }
        })
        .state('register', {
            url: '/register',
            templateUrl: 'views/owner/register.html',
            controller: 'RegisterCtrl',
            data: {pageTitle: 'Register'},
            resolve: {
                deps: commonDeps
            }
        })
        .state('confirmRegistration', {
            url: '/register',
            templateUrl: 'views/owner/confirmRegistration.html',
            controller: 'RegisterCtrl',
            data: {pageTitle: 'Confirm'},
            resolve: {
                deps: commonDeps
            }
        })
        .state('completeRegistration', {
            url: '/register',
            templateUrl: 'views/owner/completeRegistration.html',
            controller: 'RegisterCtrl',
            data: {pageTitle: 'Set your password'},
            resolve: {
                deps: commonDeps
            }
        })
        .state('resetPassword', {
            url: '/resetPassword',
            templateUrl: 'views/owner/resetPassword.html',
            controller: 'ResetPasswordCtrl',
            data: {pageTitle: 'Reset password'},
            resolve: {
                deps: commonDeps
            }
        })
        .state('confirmPassword', {
            url: '/resetPassword',
            templateUrl: 'views/owner/confirmPassword.html',
            controller: 'ResetPasswordCtrl',
            data: {pageTitle: 'Reset password'},
            resolve: {
                deps: commonDeps
            }
        })
        .state('home', {
            url: '/home',
            templateUrl: 'views/owner/home.html',
            controller: 'HomeCtrl',
            data: {pageTitle: 'Home'},
            resolve: {
                deps: commonDeps
            }
        });

});
