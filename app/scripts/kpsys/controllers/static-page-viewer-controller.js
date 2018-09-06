'use strict';

angular.module('kpsysApp').controller('StaticPageViewerController', function ($scope, $stateParams, $window, $sce, $location, AuthService) {

    $scope.pageContent = "...";

    $scope.init = function () {
        var filterKey = $stateParams.filter || $location.path().split("/")[2];
        if ('home' === filterKey) {
            if (AuthService.isAuthenticated()) {
                $scope.pageContent = $window.localStorage["home-page-authenticated"];
            } else {
                $scope.pageContent = $window.localStorage["home-page-anonymous"];
            }
        }
        if ("additional" === filterKey) {
            $scope.pageContent = $window.localStorage["additional-page"];
        }
    };

    $scope.toTrustedHTML = function (html) {
        return $sce.trustAsHtml(html);
    };

});
