'use strict';

angular.module('kpsysApp').controller('PagesController', function ($scope, $state, AuthService) {
    $scope.pages = [];

    $scope.init = function () {
        getStaticPages();
    };

    function getStaticPages() {
        AuthService.getStaticPages()
            .success(function (response) {
                $scope.pages = response;
            });
    }
});
