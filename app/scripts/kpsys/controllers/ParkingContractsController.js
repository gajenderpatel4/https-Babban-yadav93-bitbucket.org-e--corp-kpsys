'use strict';

angular.module('kpsysApp').controller('ParkingContractsCtrl', function ($scope, $rootScope, ParkingContractsService, ClientService, ZoneService, Session) {

    $scope.isArray = angular.isArray;

    $scope.init = function () {
        loadClients();
        loadZones();
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

                var selectedZoneId = $scope.zones.filter(function (zone) {
                    return zone.id === $scope.parkingContract.zone.id;
                });
                if (selectedZoneId.length === 1) {
                    $scope.parkingContract.zone = selectedZoneId[0];
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
                $scope.parkingContractSavedOk = false;
            });
    };

    var loadClients = function () {
        $scope.clientsLoading = true;
        ClientService.findAllClients()
            .then(function (response) {
                $scope.clients = response.entity;
                $scope.clientsLoading = false;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.clientsLoading = false;
            });
    };

    var loadZones = function () {
        $scope.zonesLoading = true;
        ZoneService.findAllZones()
            .then(function (response) {
                $scope.zones = response.entity;
                $scope.zonesLoading = false;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.zonesLoading = false;
            });
    };

    var authorisation = Session.getAuthorisation();
    var parkingContracts = authorisation['parking_contracts'];
    parkingContracts = parkingContracts["edit"] !== undefined ? parkingContracts["edit"] : [];
    $scope.parkingContracts = parkingContracts;
    $scope.clients = null;
    $scope.zones = null;
});
