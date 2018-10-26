'use strict';

angular.module('kpsysApp').controller('ParkingContractsCtrl', function ($scope, $rootScope, ParkingContractsService, ClientService, Session) {

    $scope.isArray = angular.isArray;

    $scope.init = function () {
        loadClients();
    };

    $scope.loadParkingContract = function () {
        $scope.parkingContractSavedOk = false;
        $scope.responseError = "";
        $scope.parkingContract = null;
        $scope.loading = true;

        if ($scope.selectedParkingContract === null) {
            $scope.loading = false;
            return;
        }

        var selectedParkingContractId = $scope.selectedParkingContract.item_id;

        ParkingContractsService.get(selectedParkingContractId)
            .then(function (response) {
                $scope.parkingContract = response.entity;
                var selectedClientId = $scope.clients.filter(function (client) {
                    return client.id === $scope.parkingContract.client.id;
                });
                if (selectedClientId.length === 1) {
                    $scope.parkingContract.client = selectedClientId[0];
                }
                $scope.loading = false;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.loading = false;
            });
    };

    $scope.saveParkingContract = function (item) {
        $scope.loading = true;
        ParkingContractsService.save(item)
            .then(function (_) {
                $scope.loading = false;
                $scope.parkingContractSavedOk = true;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.loading = false;
            });
    };

    var loadClients = function () {
        $scope.loading = true;
        ClientService.findAllClients()
            .then(function (response) {
                $scope.clients = response.entity;
                $scope.loading = false;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.loading = false;
            });
    };

    var authorisation = Session.getAuthorisation();
    var parkingContracts = authorisation['parking_contracts'];
    parkingContracts = parkingContracts["edit"] !== undefined ? parkingContracts["edit"] : [];
    $scope.parkingContracts = parkingContracts;
    $scope.clients = null;
});
