'use strict';

angular.module('kpsysApp').controller('ConfirmCtrl', function ($location, $scope, $rootScope, $state, PayPalService) {

    $scope.isArray = angular.isArray;

    var check = function () {

        $scope.loading = true;

        PayPalService.check($scope.paypalParams)
            .then(function (response) {
                $scope.loading = false;
                $scope.paypalResponse = response.entity;
                $scope.showConfirm = true;
                console.log(response);
            }, function (ex) {
                console.log(ex);

                if (angular.isDefined(ex.data) && angular.isDefined(ex.data.error)) {
                    $scope.responseError = ex.data.error.message;
                } else if (angular.isDefined(ex.data) && angular.isDefined(ex.data.errors)) {
                    $scope.responseError = ex.data.errors;
                } else {
                    $scope.responseError = "something bad happened";
                }

                $scope.loading = false;
            });
    };

    $scope.confirm = function () {

        $scope.loading = true;

        PayPalService.confirm($scope.paypalParams)
            .then(function (response) {
                $scope.loading = false;
                $scope.showSuccessMessage = true;
                console.log(response);
            }, function (ex) {
                console.log(ex);

                if (angular.isDefined(ex.data) && angular.isDefined(ex.data.error)) {
                    $scope.responseError = ex.data.error.message;
                } else if (angular.isDefined(ex.data) && angular.isDefined(ex.data.errors)) {
                    $scope.responseError = ex.data.errors;
                } else {
                    $scope.responseError = "something bad happened";
                }

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
