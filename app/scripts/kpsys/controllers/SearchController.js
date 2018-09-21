'use strict';

angular.module('kpsysApp').controller('SearchCtrl', function ($location, $scope, LicensePlatesService, PayPalService) {

    $scope.init = function () {
        if ($scope.query.length > 0) {
            $scope.submit();
        }
    };

    $scope.submitted = false;
    $scope.query = $location.search().query || "";
    $scope.responseError = "";
    $scope.paypalResponseError = "";
    $scope.errorRowIndex = null;

    var submitLocked = false;
    $scope.submit = function () {
        if (submitLocked || $scope.query.length === 0) {
            return;
        }
        submitLocked = true;
        $scope.submitted = true;
        $scope.loading = true;
        $scope.responseError = "";
        $scope.paypalResponseError = "";
        $scope.errorRowIndex = null;

        var val = $scope.query;

        LicensePlatesService.query(val)
            .then(function (response) {
                $scope.submittedQuery = val;
                $scope.licensePlates = response.items;
                submitLocked = false;
                $scope.loading = false;
            }, function (ex) {
                console.log(ex);
                $scope.submittedQuery = val;
                $scope.responseError = ex.data.error.message;
                submitLocked = false;
                $scope.loading = false;
            });
    };

    var payLocked = false;
    $scope.pay = function (index) {
        if (payLocked) {
            return;
        }
        if (index >= 0 && index < $scope.licensePlates.length) {
            payLocked = true;
            $scope.paypalResponseError = "";

            var licensePlate = $scope.licensePlates[index];

            var p = {
                amount: licensePlate.dueAmount,
                currency: licensePlate.currency,
                description: licensePlate.description,
                query: $scope.query
            };

            PayPalService.proceed(p)
                .then(function (response) {
                    var redirectUrl = response.entity.url;
                    console.log("url: " + redirectUrl);
                    window.location = redirectUrl;
                    payLocked = false;
                }, function (ex) {
                    console.log(ex);
                    $scope.paypalResponseError = ex.data.error.message;
                    $scope.errorRowIndex = index;
                    payLocked = false;
                });
        }
    };

    $scope.checkErrorStatus = function (index) {
        return $scope.errorRowIndex != null && $scope.errorRowIndex === index;
    };
});
