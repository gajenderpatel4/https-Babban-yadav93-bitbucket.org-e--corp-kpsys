'use strict';

angular.module('kpsysApp').controller('ParkingContractsCtrl', function ($scope, ParkingContractsService, Session) {

    $scope.init = function () {
        //
    };

    $scope.loadParkingContract = function () {
        $scope.responseError = "";
        $scope.parkingContract = null;
        $scope.loading = true;

        var selectedParkingContractId = $scope.selectedParkingContract.item_id;

        ParkingContractsService.get(selectedParkingContractId)
            .then(function (response) {
                $scope.parkingContract = response.entity;
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

    $scope.saveParkingContract = function (item) {
        console.log('saving ' + item.name);
    };

    var authorisation = Session.getAuthorisation();
    var parkingContracts = authorisation['parking_contracts'];
    parkingContracts = parkingContracts["edit"] !== undefined ? parkingContracts["edit"] : [];
    $scope.parkingContracts = parkingContracts;
});
