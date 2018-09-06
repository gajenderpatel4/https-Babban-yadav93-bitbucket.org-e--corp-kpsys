'use strict';

angular.module('kpsysApp').controller('UserProfileController', function($rootScope, $scope) {
    $scope.$on('$viewContentLoaded', function() {
        App.initAjax();
        Layout.setSidebarMenuActiveLink('set', $('#sidebar_menu_link_profile'));
    });

    $rootScope.settings.layout.pageBodySolid = true;
    $rootScope.settings.layout.pageSidebarClosed = false;
});
