'use strict';

angular.module('kpsysApp').controller('ConfirmCtrl', function ($location, $scope, $rootScope, $state, PayPalService) {

    $scope.isArray = angular.isArray;
    $scope.loading = false;

    var check = function () {

        $scope.loading = true;

        PayPalService.check($scope.paypalParams)
            .then(function (response) {
                $scope.loading = false;
                $scope.paypalResponse = response.entity;
                $scope.showConfirm = true;
                console.log(response);
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.loading = false;
            });
    };

    $scope.confirm = function () {

        if ($scope.loading) {
            return;
        }

        $scope.loading = true;

        PayPalService.confirm($scope.paypalParams)
            .then(function (response) {
                $scope.loading = false;
                $scope.showSuccessMessage = true;
                console.log(response);
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.loading = false;
            });
    };

    $scope.init = function () {
        var guid = $location.search().guid || "";
        var paymentId = $location.search().paymentId || "";
        var payerID = $location.search().PayerID || "";

        $scope.paypalParams = {
            guid: guid,
            paymentId: paymentId,
            payerID: payerID
        };

        if (guid.length === 0 || paymentId.length === 0 || payerID.length === 0) {
            $state.go('home');
            return;
        }

        check();
    };
});
