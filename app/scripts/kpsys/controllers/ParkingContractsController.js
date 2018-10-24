'use strict';

angular.module('kpsysApp').controller('ParkingContractsCtrl', function ($scope, ParkingContractsService, Session) {

    $scope.init = function () {
        //
    };

    $scope.loadParkingContract = function () {
        $scope.responseError = "";
        $scope.parkingContract = null;

        var selectedParkingContractId = $scope.selectedParkingContract.item_id;

        ParkingContractsService.get(selectedParkingContractId)
            .then(function (response) {
                $scope.parkingContract = response.entity;
            }, function (ex) {
                if (angular.isDefined(ex.data) && angular.isDefined(ex.data.error)) {
                    $scope.responseError = ex.data.error.message;
                } else if (angular.isDefined(ex.data) && angular.isDefined(ex.data.errors)) {
                    $scope.responseError = ex.data.errors;
                } else {
                    $scope.responseError = "something bad happened";
                }
            });
    };

    var authorisation = Session.getAuthorisation();
    var parkingContracts = authorisation['parking_contracts'];
    parkingContracts = parkingContracts["edit"] !== undefined ? parkingContracts["edit"] : [];
    $scope.parkingContracts = parkingContracts;
});
