'use strict';

angular.module('kpsysApp').controller('SearchCtrl', function ($location, $scope, $rootScope, LicensePlatesService, PayPalService) {

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

        LicensePlatesService.search($scope.query)
            .then(function (response) {
                $scope.licensePlates = response.entity.items;
                $scope.loading = false;
            }, function (ex) {
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

    $scope.pay = function (index) {
        if ($scope.loading) {
            return;
        }
        if (index >= 0 && index < $scope.licensePlates.length) {
            $scope.loading = true;
            $scope.responseError = "";

            var licensePlate = $scope.licensePlates[index];

            var p = {
                amount: licensePlate.dueAmount,
                description: licensePlate.description,
                query: $scope.query,
                currency: licensePlate.currency,
                licensePlate: licensePlate.licensePlate,
                parkingId: licensePlate.parkingId,
                paymentFromTimestamp: licensePlate.startTimestamp,
                paymentUntilTimestamp: licensePlate.endTimestamp,
                paymentId: ""
            };

            PayPalService.proceed(p)
                .then(function (response) {
                    var redirectUrl = response.entity.url;
                    console.log("url: " + redirectUrl);
                    $scope.loading = false;
                    window.location = redirectUrl;
                }, function (ex) {
                    console.log(ex);

                    if (angular.isDefined(ex.data) && angular.isDefined(ex.data.error)) {
                        $scope.responseError = ex.data.error.message;
                    } else if (angular.isDefined(ex.data) && angular.isDefined(ex.data.errors)) {
                        $scope.responseError = ex.data.errors;
                    } else {
                        $scope.responseError = "something bad happened";
                    }

                    $scope.errorRowIndex = index;
                    $scope.loading = false;
                });
        }
    };

    $scope.checkErrorStatus = function (index) {
        return $scope.errorRowIndex === index;
    };
});
