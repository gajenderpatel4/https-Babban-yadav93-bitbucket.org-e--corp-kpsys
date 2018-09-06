'use strict';

angular.module('kpsysApp').controller('DashboardController', function($rootScope, $scope) {
    $scope.$on('$viewContentLoaded', function() {
        App.initAjax();
    });

    $rootScope.settings.layout.pageContentWhite = true;
    $rootScope.settings.layout.pageBodySolid = false;
    $rootScope.settings.layout.pageSidebarClosed = false;
});
