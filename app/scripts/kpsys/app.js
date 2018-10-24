'use strict';

var app = angular.module("kpsysApp", [
    'ngResource',
    'ui.router',
    'ui.bootstrap',
    'ui.bootstrap.tooltip',
    'pascalprecht.translate',
    'oc.lazyLoad',
    'ngSanitize',
    'ngJsTree',
    'fixed.table.header'
]);
var kpsysApp = app;

/* Configure ocLazyLoader(refer: https://github.com/ocombe/ocLazyLoad) */
kpsysApp.config(['$ocLazyLoadProvider', function ($ocLazyLoadProvider) {
    $ocLazyLoadProvider.config({
        // global configs go here
    });
}]);


//AngularJS v1.3.x workaround for old style controller declarition in HTML
kpsysApp.config(['$controllerProvider', function ($controllerProvider) {
    // this option might be handy for migrating old apps, but please don't use it
    // in new ones!
    $controllerProvider.allowGlobals();
}]);

/********************************************
 END: BREAKING CHANGE in AngularJS v1.3.x:
 *********************************************/

/* Setup global settings */
kpsysApp.factory('settings', ['$rootScope', function ($rootScope) {
    // supported languages
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

/* Setup App Main Controller */
kpsysApp.controller('AppController', function ($state, $timeout, $scope, $rootScope, $window, $location, USER_ROLES, CLIENT_EVENTS, AuthService, ClientService) {
    $scope.$on('$viewContentLoaded', function () {
        App.initComponents(); // init core components
        //Layout.init(); //  Init entire layout(header, footer, sidebar, etc) on page load if the partials included in server side instead of loading with ng-include directive
    });

    $scope.isAuthenticated = function () {
        return AuthService.isAuthenticated();
    };

    $scope.init = function () {
        $rootScope.customClientDataLoading = true;
        //TODO: uncomment to use in multitenant environments
        //$rootScope.unableToDetermineClientForHostname = false;
        var currentClientId = $window.sessionStorage.clientId;
        if (currentClientId === undefined) {
            var hostname = $location.host();
            ClientService.findByHostname({hostname: hostname})
                .then(function (response) {
                    var clientId = response.entity.result;
                    $rootScope.setCurrentClientId(clientId);
                    $rootScope.$broadcast(CLIENT_EVENTS.clientFoundByHostname, clientId);
                    $rootScope.customClientDataLoading = false;
                    console.log(response);
                }, function (ex) {
                    console.log(ex);
                    $rootScope.$broadcast(CLIENT_EVENTS.clientNotFoundByHostname);
                    //TODO: uncomment to use in multitenant environments
                    //$rootScope.unableToDetermineClientForHostname = true;
                    $rootScope.customClientDataLoading = false;
                });
        } else {
            $timeout(function () {
                $rootScope.$broadcast(CLIENT_EVENTS.clientFoundByHostname, currentClientId);
                $rootScope.customClientDataLoading = false;
            });
        }

        $rootScope.state = $state;
    };

    $scope.hasSidebar = true;

    $rootScope.query = null;
    $rootScope.currentUser = null;
    $rootScope.userRoles = USER_ROLES;
    $rootScope.isAuthorized = AuthService.isAuthorized;
    $rootScope.setCurrentUser = function (user) {
        $rootScope.currentUser = user;
        if (user !== undefined) {
            $window.sessionStorage.user = user;
        }
    };
    $rootScope.setCurrentUser($window.sessionStorage.user);
    $rootScope.setCurrentClientId = function (clientId) {
        $rootScope.currentClientId = clientId;
        if (clientId !== undefined) {
            $window.sessionStorage.clientId = clientId;
        }
    };
    $rootScope.setCurrentClientId($window.sessionStorage.clientId);
});

/***
 Layout Partials.
 By default the partials are loaded through AngularJS ng-include directive. In case they loaded in server side(e.g: PHP include function) then below partial
 initialization can be disabled and Layout.init() should be called on page load complete as explained above.
 ***/

/* Setup Layout Part - Header */
kpsysApp.controller('HeaderController', ['$scope', '$rootScope', 'AuthService', 'CLIENT_EVENTS', 'ClientService', function ($scope, $rootScope, AuthService, CLIENT_EVENTS, ClientService) {
    $scope.$on('$includeContentLoaded', function () {
        Layout.initHeader(); // init header
    });
    $scope.isAuthenticated = function () {
        return AuthService.isAuthenticated();
    };
    $scope.logout = function () {
        AuthService.logout();
    };

    var createLink = function (id, url) {
        var link = document.createElement('link');
        link.id = id;
        link.rel = "stylesheet";
        link.type = "text/css";
        link.href = url;
        return link;
    };

    $rootScope.$on(CLIENT_EVENTS.clientFoundByHostname, function (event, clientId) {
        ClientService.findClientCustomData({clientId: clientId})
            .then(function (response) {
                var entity = response.entity;
                if (entity.logoUrl) {
                    $scope.logoUrl = entity.logoUrl;
                }
                if (entity.cssUrl) {
                    var link = createLink("custom-styles", entity.cssUrl);
                    angular.element('head').append(link);
                }
                $scope.logoUrlCheckCompleted = true;
                console.log(response.entity);
            }, function (ex) {
                console.log(ex);
                $scope.logoUrlCheckCompleted = true;
                //TODO: uncomment to use in multitenant environments
                //$rootScope.unableToDetermineClientForHostname = true;
            });
    });

    $scope.$on(CLIENT_EVENTS.clientNotFoundByHostname, function () {
        $scope.logoUrlCheckCompleted = true;
    });
}]);

/* Setup Layout Part - Sidebar */
kpsysApp.controller('SidebarController', function ($scope, $rootScope, $window, $translate, AuthService, AUTH_EVENTS) {

    $scope.homePageAnonymous = undefined;
    $scope.homePageAuthenticated = undefined;
    $scope.additionalPage = undefined;

    $scope.pages = [];
    $scope.hasRoleAuthorisationUser = AuthService.hasRoleAuthorisationUser();
    $scope.hasParkingContractRoles = AuthService.hasParkingContractRoles;
    //$scope.hasRoleAuthorisationPages = AuthService.hasRoleAuthorisationPages();
    //$scope.hasRoleAuthorisation = AuthService.hasRoleAuthorisation;

    $scope.$on('$includeContentLoaded', function () {
        Layout.initSidebar();
    });

    $rootScope.$on(AUTH_EVENTS.languageChanged, function () {
        delete $window.localStorage["home-page-authenticated"];
        delete $window.localStorage["additional-page"];
        delete $window.localStorage["home-page-anonymous"];
        //getStaticPages()
    });

    $scope.init = function () {
        //getStaticPages();
    };

    $scope.isAuthenticated = function () {
        return AuthService.isAuthenticated();
    };

    function getStaticPages() {
        AuthService.getStaticPages()
            .success(function (response) {
                $scope.pages = response;
                filterStaticPages();
            });
    }

    function filterStaticPages() {
        var length = $scope.pages.length;
        var language = $translate.use();
        for (var i = 0; i < length; i++) {
            if ($scope.pages[i].language === language) {
                if ($scope.pages[i].pageType === 0) {
                    $scope.homePageAnonymous = $scope.pages[i];
                    $window.localStorage["home-page-anonymous"] = $scope.homePageAnonymous.content;
                } else if ($scope.pages[i].pageType === 1) {
                    $scope.additionalPage = $scope.pages[i];
                    $window.localStorage["additional-page"] = $scope.additionalPage.content;
                } else if ($scope.pages[i].pageType === 10) {
                    $scope.homePageAuthenticated = $scope.pages[i];
                    $window.localStorage["home-page-authenticated"] = $scope.homePageAuthenticated.content;
                }
            }
        }
    }
});

/* Setup Layout Part - Quick Sidebar */
kpsysApp.controller('QuickSidebarController', ['$scope', function ($scope) {
    $scope.$on('$includeContentLoaded', function () {
        setTimeout(function () {
            QuickSidebar.init(); // init quick sidebar
        }, 2000);
    });
}]);

/* Setup Layout Part - Theme Panel */
kpsysApp.controller('ThemePanelController', ['$scope', function ($scope) {
    $scope.$on('$includeContentLoaded', function () {
        Demo.init(); // init theme panel
    });
}]);

/* Setup Layout Part - Footer */
kpsysApp.controller('FooterController', ['$scope', function ($scope) {
    $scope.$on('$includeContentLoaded', function () {
        Layout.initFooter(); // init footer
    });
}]);

/* Init global settings and run the app */
kpsysApp.run(function ($rootScope, $location, settings, $state) {
    $rootScope.$state = $state; // state to be accessed from view
    $rootScope.$settings = settings; // state to be accessed from view
});


kpsysApp.config(function ($stateProvider, $urlRouterProvider) {

    // Redirect any unmatched url
    $urlRouterProvider.otherwise("/home");

    $stateProvider

        // User Profile Parking Contracts
        .state("profile.parking_contracts", {
            url: "/parking_contracts",
            controller: 'ParkingContractsCtrl',
            templateUrl: "views/kpsys/profile/parking_contracts.html",
            resolve: {
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        {
                            name: 'ui.select',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                'scripts/kpsys/resources/parking-contracts-resource.js',
                                'scripts/kpsys/services/parking-contracts-service.js',
                                'scripts/kpsys/controllers/ParkingContractsController.js'
                            ]
                        }]);
                }]
            },
            data: {pageTitle: 'Parking Contracts'}
        })

        .state('pages', {
            url: '/pages',
            templateUrl: 'views/kpsys/static-pages.html',
            controller: 'PagesController',
            data: {pageTitle: 'Static Pages'},
            resolve: {
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before',
                        files: [
                            'scripts/kpsys/controllers/pages-controller.js'
                        ]
                    });
                }]
            }
        })

        // Static Pages
        .state('staticPage', {
            url: '/static-page/:filter',
            templateUrl: 'views/kpsys/static-page-viewer.html',
            controller: 'StaticPageViewerController',
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before',
                        files: [
                            'scripts/kpsys/controllers/static-page-viewer-controller.js'
                        ]
                    });
                }]
            }
        })
        /*
        .state('home', {
            url: '/home',
            templateUrl: 'views/kpsys/static-page-viewer.html',
            controller: 'StaticPageViewerController',
            params: {filter: 'home'},
            resolve: {
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before',
                        files: [
                            'scripts/kpsys/controllers/static-page-viewer-controller.js'
                        ]
                    });
                }]
            }
        })*/

        // Editor
        .state('editor', {
            url: "/editor",
            templateUrl: "views/kpsys/editor.html",
            data: {pageTitle: 'Kpsys HTML Editor'},
            controller: "StaticPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
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
                            '../assets/pages/scripts/components-select2.min.js',

                            'scripts/kpsys/controllers/editor-controller.js',
                            'scripts/kpsys/resources/editor-resource.js'
                        ]
                    });
                }]
            }
        })

        // Dashboard
        .state('dashboard', {
            url: "/dashboard",
            templateUrl: "views/kpsys/dashboard.html",
            data: {pageTitle: 'Admin Dashboard Template'},
            controller: "DashboardController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before a LINK element with this ID. Dynamic CSS files must be loaded between core and theme css files
                        files: [
                            '../assets/global/plugins/morris/morris.css',
                            '../assets/global/plugins/morris/morris.min.js',
                            '../assets/global/plugins/morris/raphael-min.js',
                            '../assets/global/plugins/jquery.sparkline.min.js',

                            '../assets/pages/scripts/dashboard.min.js',
                            'scripts/kpsys/controllers/DashboardController.js'
                        ]
                    });
                }]
            }
        })

        // AngularJS plugins
        .state('fileupload', {
            url: "/file_upload.html",
            templateUrl: "views/kpsys/file_upload.html",
            data: {pageTitle: 'AngularJS File Upload'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'angularFileUpload',
                        files: [
                            '../assets/global/plugins/angularjs/plugins/angular-file-upload/angular-file-upload.min.js',
                        ]
                    }, {
                        name: 'kpsysApp',
                        files: [
                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })

        // UI Select
        .state('uiselect', {
            url: "/ui_select.html",
            templateUrl: "views/kpsys/ui_select.html",
            data: {pageTitle: 'AngularJS Ui Select'},
            controller: "UISelectController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'ui.select',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                            '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js'
                        ]
                    }, {
                        name: 'kpsysApp',
                        files: [
                            'scripts/kpsys/controllers/UISelectController.js'
                        ]
                    }]);
                }]
            }
        })

        // UI Bootstrap
        .state('uibootstrap', {
            url: "/ui_bootstrap.html",
            templateUrl: "views/kpsys/ui_bootstrap.html",
            data: {pageTitle: 'AngularJS UI Bootstrap'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'kpsysApp',
                        files: [
                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })

        // Tree View
        .state('tree', {
            url: "/tree",
            templateUrl: "views/kpsys/tree.html",
            data: {pageTitle: 'jQuery Tree View'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/jstree/dist/themes/default/style.min.css',

                            '../assets/global/plugins/jstree/dist/jstree.min.js',
                            '../assets/pages/scripts/ui-tree.min.js',
                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })

        // Form Tools
        .state('formtools', {
            url: "/form-tools",
            templateUrl: "views/kpsys/form_tools.html",
            data: {pageTitle: 'Form Tools'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css',
                            '../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css',
                            '../assets/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css',
                            '../assets/global/plugins/typeahead/typeahead.css',

                            '../assets/global/plugins/fuelux/js/spinner.min.js',
                            '../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js',
                            '../assets/global/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js',
                            '../assets/global/plugins/jquery.input-ip-address-control-1.0.min.js',
                            '../assets/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js',
                            '../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js',
                            '../assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js',
                            '../assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js',
                            '../assets/global/plugins/typeahead/handlebars.min.js',
                            '../assets/global/plugins/typeahead/typeahead.bundle.min.js',
                            '../assets/pages/scripts/components-form-tools-2.min.js',

                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })

        // Date & Time Pickers
        .state('pickers', {
            url: "/pickers",
            templateUrl: "views/kpsys/pickers.html",
            data: {pageTitle: 'Date & Time Pickers'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/clockface/css/clockface.css',
                            '../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css',
                            '../assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css',
                            '../assets/global/plugins/bootstrap-colorpicker/css/colorpicker.css',
                            '../assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css',
                            '../assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css',

                            '../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js',
                            '../assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js',
                            '../assets/global/plugins/clockface/js/clockface.js',
                            '../assets/global/plugins/moment.min.js',
                            '../assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js',
                            '../assets/global/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js',
                            '../assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js',

                            '../assets/pages/scripts/components-date-time-pickers.min.js',

                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })

        // Custom Dropdowns
        .state('dropdowns', {
            url: "/dropdowns",
            templateUrl: "views/kpsys/dropdowns.html",
            data: {pageTitle: 'Custom Dropdowns'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([{
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                            '../assets/global/plugins/select2/css/select2.min.css',
                            '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                            '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                            '../assets/global/plugins/select2/js/select2.full.min.js',

                            '../assets/pages/scripts/components-bootstrap-select.min.js',
                            '../assets/pages/scripts/components-select2.min.js',

                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    }]);
                }]
            }
        })

        // Advanced Datatables
        .state('datatablesAdvanced', {
            url: "/datatables/managed.html",
            templateUrl: "views/kpsys/datatables/managed.html",
            data: {pageTitle: 'Advanced Datatables'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/datatables/datatables.min.css',
                            '../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css',

                            '../assets/global/plugins/datatables/datatables.all.min.js',

                            '../assets/pages/scripts/table-datatables-managed.min.js',

                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    });
                }]
            }
        })

        // Ajax Datetables
        .state('datatablesAjax', {
            url: "/datatables/ajax.html",
            templateUrl: "views/kpsys/datatables/ajax.html",
            data: {pageTitle: 'Ajax Datatables'},
            controller: "GeneralPageController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/datatables/datatables.min.css',
                            '../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css',
                            '../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css',

                            '../assets/global/plugins/datatables/datatables.all.min.js',
                            '../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js',
                            '../assets/global/scripts/datatable.min.js',

                            'scripts/scripts/table-ajax.js',
                            'scripts/kpsys/controllers/GeneralPageController.js'
                        ]
                    });
                }]
            }
        })

        // User Profile
        .state("profile", {
            url: "/profile",
            templateUrl: "views/kpsys/profile/main.html",
            data: {pageTitle: 'User Profile'},
            controller: "UserProfileController",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css',
                            '../assets/pages/css/profile.css',

                            '../assets/global/plugins/jquery.sparkline.min.js',
                            '../assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js',

                            '../assets/pages/scripts/profile.min.js',

                            'scripts/kpsys/controllers/UserProfileController.js'
                        ]
                    });
                }]
            }
        })

        // User Profile Dashboard
        .state("profile.dashboard", {
            url: "/dashboard",
            templateUrl: "views/kpsys/profile/dashboard.html",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                }
            },
            data: {pageTitle: 'User Profile'}
        })

        // User Profile Account
        .state("profile.account", {
            url: "/account",
            templateUrl: "views/kpsys/profile/account.html",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                }
            },
            data: {pageTitle: 'User Account'}
        })

        // User Profile Help
        .state("profile.help", {
            url: "/help",
            templateUrl: "views/kpsys/profile/help.html",
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                }
            },
            data: {pageTitle: 'User Help'}
        })
        .state('login', {
            url: '/login',
            templateUrl: 'views/kpsys/login.html',
            controller: 'LoginCtrl',
            data: {pageTitle: 'Login'},
            resolve: {
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
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
                }]

            }
        })
        // user maintenance
        .state('userMaintenanceUsers', {
            url: '/user/:filter',
            templateUrl: 'views/kpsys/users-filtered.html',
            controller: 'UserController',
            data: {pageTitle: 'Users Maintenance'},
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        {
                            name: 'ui.select',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js'
                            ]
                        }, {
                            name: 'kpsysApp',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                                '../assets/global/plugins/select2/css/select2.min.css',
                                '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                                '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                                '../assets/global/plugins/select2/js/select2.full.min.js',

                                '../assets/pages/scripts/components-bootstrap-select.min.js',
                                '../assets/pages/scripts/components-select2.min.js',

                                'scripts/kpsys/controllers/GeneralPageController.js',
                                'scripts/kpsys/controllers/UISelectController.js',
                                'scripts/kpsys/controllers/user-controller.js',
                                'scripts/kpsys/controllers/user-add-dialog-controller.js',
                                'scripts/kpsys/controllers/user-view-dialog-controller.js',
                                'scripts/kpsys/constants/user-types-mapping-constants.js',
                                'scripts/kpsys/resources/client-resource.js',
                                'scripts/kpsys/resources/location-resource.js',
                                'scripts/kpsys/resources/user-resource.js',
                                'scripts/kpsys/resources/user-location-resource.js',
                                'scripts/kpsys/services/client-service.js',
                                'scripts/kpsys/services/location-service.js',
                                'scripts/kpsys/services/user-location-service.js',
                                'scripts/kpsys/services/user-service.js'
                            ]
                        }]);
                }]
            }
        })
        .state('anprMaintenance', {
            url: '/anpr',
            templateUrl: 'views/kpsys/anpr.html',
            controller: 'AnprController',
            data: {pageTitle: 'ANPR cameras and devices'},
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        {
                            name: 'ui.select',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js'
                            ]
                        }, {
                            name: 'kpsysApp',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                                '../assets/global/plugins/select2/css/select2.min.css',
                                '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                                '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                                '../assets/global/plugins/select2/js/select2.full.min.js',

                                '../assets/pages/scripts/components-bootstrap-select.min.js',
                                '../assets/pages/scripts/components-select2.min.js',

                                'bower_components/jstree/dist/themes/default/style.css',

                                'scripts/kpsys/controllers/GeneralPageController.js',
                                'scripts/kpsys/controllers/UISelectController.js',
                                'scripts/kpsys/controllers/anpr-controller.js',
                                'scripts/kpsys/controllers/anpr-modal-controller.js',
                                'scripts/kpsys/constants/user-types-mapping-constants.js',
                                'scripts/kpsys/resources/client-resource.js',
                                'scripts/kpsys/resources/anpr-resource.js',
                                'scripts/kpsys/services/client-service.js',
                                'scripts/kpsys/services/user-service.js',
                                'scripts/kpsys/services/anpr-service.js'
                            ]
                        }]);
                }]
            }
        })
        .state('fines', {
            url: '/fines',
            templateUrl: 'views/kpsys/tickets.html',
            controller: 'TicketsController',
            data: {pageTitle: 'Fines'},
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        {
                            name: 'ui.select',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js'
                            ]
                        }, {
                            name: 'kpsysApp',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                                '../assets/global/plugins/select2/css/select2.min.css',
                                '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                                '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                                '../assets/global/plugins/select2/js/select2.full.min.js',

                                '../assets/pages/scripts/components-bootstrap-select.min.js',
                                '../assets/pages/scripts/components-select2.min.js',

                                'bower_components/jstree/dist/themes/default/style.css',

                                'scripts/kpsys/controllers/GeneralPageController.js',
                                'scripts/kpsys/controllers/UISelectController.js',

                                'scripts/kpsys/constants/user-types-mapping-constants.js',
                                'scripts/kpsys/resources/client-resource.js',
                                'scripts/kpsys/services/client-service.js',
                                'scripts/kpsys/services/user-service.js',

                                'scripts/kpsys/services/location-service.js',
                                'scripts/kpsys/resources/location-resource.js',

                                'scripts/kpsys/resources/enums-resource.js',

                                'scripts/kpsys/resources/ticket-resource.js',
                                'scripts/kpsys/services/ticket-service.js',
                                'scripts/kpsys/controllers/ticket-controller.js'

                            ]
                        }]);
                }]
            }

        })
        .state('fineEdit', {
            url: '/fines/:ticketId',
            templateUrl: 'views/kpsys/ticket-edit.html',
            controller: 'TicketController',
            data: {pageTitle: 'Edit Fine'},
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        {
                            name: 'ui.select',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js'
                            ]
                        }, {
                            name: 'kpsysApp',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                                '../assets/global/plugins/select2/css/select2.min.css',
                                '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                                '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                                '../assets/global/plugins/select2/js/select2.full.min.js',

                                '../assets/pages/scripts/components-bootstrap-select.min.js',
                                '../assets/pages/scripts/components-select2.min.js',

                                'bower_components/jstree/dist/themes/default/style.css',

                                'scripts/kpsys/controllers/GeneralPageController.js',
                                'scripts/kpsys/controllers/UISelectController.js',

                                'scripts/kpsys/constants/user-types-mapping-constants.js',
                                'scripts/kpsys/resources/client-resource.js',
                                'scripts/kpsys/services/client-service.js',
                                'scripts/kpsys/services/user-service.js',

                                'scripts/kpsys/services/location-service.js',
                                'scripts/kpsys/resources/location-resource.js',

                                'scripts/kpsys/resources/enums-resource.js',

                                'scripts/kpsys/resources/ticket-resource.js',
                                'scripts/kpsys/services/ticket-service.js',
                                'scripts/kpsys/controllers/ticket-edit-controller.js'

                            ]
                        }]);
                }]
            }

        })
        .state('anprEventsMaintenance', {
            url: '/anpr/events',
            templateUrl: 'views/kpsys/anpr-events.html',
            controller: 'AnprEventsController',
            data: {pageTitle: 'ANPR events'},
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        {
                            name: 'ui.select',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js'
                            ]
                        }, {
                            name: 'kpsysApp',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                                '../assets/global/plugins/select2/css/select2.min.css',
                                '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                                '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                                '../assets/global/plugins/select2/js/select2.full.min.js',

                                '../assets/pages/scripts/components-bootstrap-select.min.js',
                                '../assets/pages/scripts/components-select2.min.js',

                                'bower_components/jstree/dist/themes/default/style.css',

                                'scripts/kpsys/controllers/GeneralPageController.js',
                                'scripts/kpsys/controllers/UISelectController.js',
                                'scripts/kpsys/controllers/anpr-events-controller.js',
                                'scripts/kpsys/constants/user-types-mapping-constants.js',
                                'scripts/kpsys/resources/client-resource.js',
                                'scripts/kpsys/resources/anpr-events-resource.js',
                                'scripts/kpsys/services/client-service.js',
                                'scripts/kpsys/services/user-service.js',
                                'scripts/kpsys/services/anpr-events-service.js',
                                'scripts/kpsys/resources/anpr-resource.js',
                                'scripts/kpsys/services/anpr-service.js'

                            ]
                        }]);
                }]
            }
        })
        .state('anprVideo', {
            url: '/anpr/video',
            templateUrl: 'views/kpsys/anpr-video.html',
            controller: 'AnprVideoController',
            data: {pageTitle: 'ANPR stream'},
            resolve: {
                auth: function resolveAuthentication(AuthResolver) {
                    return AuthResolver.resolve();
                },
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load([
                        {
                            name: 'ui.select',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.css',
                                '../assets/global/plugins/angularjs/plugins/ui-select/select.min.js'
                            ]
                        }, {
                            name: 'kpsysApp',
                            insertBefore: '#ng_load_plugins_before',
                            files: [
                                '../assets/global/plugins/bootstrap-select/css/bootstrap-select.min.css',
                                '../assets/global/plugins/select2/css/select2.min.css',
                                '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                                '../assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js',
                                '../assets/global/plugins/select2/js/select2.full.min.js',

                                '../assets/pages/scripts/components-bootstrap-select.min.js',
                                '../assets/pages/scripts/components-select2.min.js',

                                'bower_components/jstree/dist/themes/default/style.css',

                                'scripts/kpsys/controllers/GeneralPageController.js',
                                'scripts/kpsys/controllers/UISelectController.js',
                                'scripts/kpsys/controllers/anpr-video-controller.js',
                                'scripts/kpsys/constants/user-types-mapping-constants.js',
                                'scripts/kpsys/resources/client-resource.js',
                                'scripts/kpsys/services/client-service.js',
                                'scripts/kpsys/services/user-service.js',
                                'scripts/kpsys/resources/anpr-video-resource.js',
                                'scripts/kpsys/resources/anpr-resource.js',
                                'scripts/kpsys/services/anpr-service.js'

                            ]
                        }]);
                }]
            }
        })
        /*
        .state('todo', {
            url: "/todo",
            templateUrl: "views/kpsys/todo.html",
            data: {pageTitle: 'Todo'},
            controller: "TodoController",
            resolve: {
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
                    return $ocLazyLoad.load({
                        name: 'kpsysApp',
                        insertBefore: '#ng_load_plugins_before', // load the above css files before '#ng_load_plugins_before'
                        files: [
                            '../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css',
                            '../assets/apps/css/todo-2.css',
                            '../assets/global/plugins/select2/css/select2.min.css',
                            '../assets/global/plugins/select2/css/select2-bootstrap.min.css',

                            '../assets/global/plugins/select2/js/select2.full.min.js',

                            '../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js',

                            '../assets/apps/scripts/todo-2.min.js',

                            'scripts/kpsys/controllers/TodoController.js'
                        ]
                    });
                }]
            }
        })*/
        .state('home', {
            url: '/home?query',
            templateUrl: 'views/kpsys/search.html',
            controller: 'SearchCtrl',
            data: {pageTitle: 'Search license plates'},
            resolve: {
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
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
                                '../assets/pages/scripts/components-select2.min.js',


                                '../assets/pages/css/required-field-block.css',
                                '../assets/apps/css/search.css',

                                'scripts/kpsys/resources/paypal-resource.js',
                                'scripts/kpsys/services/paypal-service.js',
                                'scripts/kpsys/resources/license-plates-resource.js',
                                'scripts/kpsys/services/license-plates-service.js',
                                'scripts/kpsys/controllers/SearchController.js'
                            ]
                        }]);
                }]
            }
        })
        .state('confirm', {
            url: '/confirm?guid&paymentId&PayerID',
            templateUrl: 'views/kpsys/confirm.html',
            controller: 'ConfirmCtrl',
            data: {pageTitle: 'Confirm'},
            resolve: {
                deps: ['$ocLazyLoad', function ($ocLazyLoad) {
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
                                '../assets/pages/scripts/components-select2.min.js',

                                'scripts/kpsys/resources/paypal-resource.js',
                                'scripts/kpsys/services/paypal-service.js',
                                'scripts/kpsys/controllers/ConfirmController.js'
                            ]
                        }]);
                }]
            }
        });
});
