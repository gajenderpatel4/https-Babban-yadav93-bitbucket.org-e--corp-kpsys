'use strict';

angular.module('kpsysApp').controller('SearchCtrl', function ($location, $window, $scope, $rootScope, LicensePlatesService, PayPalService) {

    $scope.init = function () {
        if ($scope.query.length > 0) {
            $scope.submitted = true;
            $scope.submit();
        }
    };

    $scope.isArray = angular.isArray;

    $scope.query = $location.search().query || "";
    $scope.responseError = "";
    $scope.errorRowIndex = null;
    $scope.loading = false;

    $scope.submit = function () {

        if ($scope.loading || $scope.query.length === 0) {
            return;
        }

        $scope.loading = true;
        $scope.responseError = "";
        $scope.errorRowIndex = null;
        $scope.licensePlates = null;

        $rootScope.query = $scope.query;

        var p = {
            licensePlate: $scope.query
        };

        if ($window.sessionStorage.clientId !== undefined) {
            p["clientId"] = $window.sessionStorage.clientId;
        }

        LicensePlatesService.search(p)
            .then(function (response) {
                $scope.licensePlates = response.entity.items;
                $scope.loading = false;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.loading = false;
            });
    };

    $scope.pay = function (index) {
        if ($scope.loading) {
            return;
        }
        if (index >= 0 && index < $scope.licensePlates.length) {
            $scope.loading = true;
            $scope.responseError = "";

            var licensePlate = $scope.licensePlates[index];
            var clientId = $window.sessionStorage.clientId !== undefined ? $window.sessionStorage.clientId : licensePlate.clientId;

            var p = {
                amount: licensePlate.dueAmount,
                description: licensePlate.description,
                query: $scope.query,
                currency: licensePlate.currency,
                licensePlate: licensePlate.licensePlate,
                parkingId: licensePlate.parkingId,
                paymentFromTimestamp: licensePlate.startTimestamp,
                paymentUntilTimestamp: licensePlate.endTimestamp,
                paymentId: "",
                clientId: clientId
            };

            PayPalService.proceed(p)
                .then(function (response) {
                    var redirectUrl = response.entity.url;
                    console.log("url: " + redirectUrl);
                    window.location = redirectUrl;
                    $scope.loading = false;
                }, function (ex) {
                    $scope.responseError = $rootScope.getErrorMessage(ex);
                    $scope.errorRowIndex = index;
                    $scope.loading = false;
                });
        }
    };

    $scope.checkErrorStatus = function (index) {
        return $scope.errorRowIndex === index;
    };
});
