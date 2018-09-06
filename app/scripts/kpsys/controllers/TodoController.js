'use strict';

angular.module('kpsysApp').controller('TodoController', function($rootScope, $scope) {
    $scope.$on('$viewContentLoaded', function() {
        App.initAjax();
    });

    $rootScope.settings.layout.pageContentWhite = true;
    $rootScope.settings.layout.pageBodySolid = true;
    $rootScope.settings.layout.pageSidebarClosed = false;
});
