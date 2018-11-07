'use strict';

angular.module('kpsysApp').controller('ParkingContractsCtrl', function ($q, $scope, $rootScope, ParkingContractsService, ParkingContractItemsService, ClientService, ZoneService, Session) {

    $scope.isArray = angular.isArray;

    $scope.init = function () {

        $scope.clients = [];
        $scope.zones = [];
        $scope.parkingContractsLoading = true;
        $q.all([
            ClientService.findAllClients(),
            ZoneService.findAllZones()
        ]).then(function (result) {
            var clients = result[0].entity;
            var zones = result[1].entity;

            $scope.clients = clients;
            $scope.zones = zones;

            $scope.parkingContractsLoading = false;
        }).catch(function (err) {
            $scope.responseError = $rootScope.getErrorMessage(err);
            $scope.parkingContractsLoading = false;
        });
    };

    $scope.parkingContractItemChange = function () {
        $scope.initingNewParkingContractItem = false;
        if ($scope.selectedParkingContractItem === null) {
            return;
        }
        $scope.parkingContractItem = angular.copy($scope.selectedParkingContractItem);

        // find currently selected client id
        var selectedClientId = $scope.clients.filter(function (client) {
            return client.id === $scope.parkingContractItem.client.id;
        });
        if (selectedClientId.length === 1) {
            $scope.parkingContractItem.client = selectedClientId[0];
        }
    };

    $scope.updateParkingContractItem = function () {
        $scope.parkingContractUpdatingInProcess = true;
        $scope.responseError = false;
        $scope.parkingContractSavedOk = false;

        var parkingContractItemId = $scope.parkingContractItem.id;

        ParkingContractItemsService.update(parkingContractItemId, $scope.parkingContractItem)
            .then(function (_) {
                $scope.parkingContractUpdatingInProcess = false;
                $scope.parkingContractSavedOk = true;

                for (var i = 0; i < $scope.parkingContractItems.length; ++i) {
                    if ($scope.parkingContractItems[i].id === parkingContractItemId) {
                        $scope.parkingContractItems[i] = angular.copy($scope.parkingContractItem);
                        $scope.selectedParkingContractItem = $scope.parkingContractItems[i];
                        break;
                    }
                }
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.parkingContractUpdatingInProcess = false;
            });
    };

    $scope.initNewParkingContractItem = function () {
        $scope.initingNewParkingContractItem = true;
        $scope.selectedParkingContractItem = null;
        $scope.parkingContractItem = null;
    };

    $scope.addParkingContractItem = function () {
        $scope.parkingContractUpdatingInProcess = true;
        $scope.responseError = false;
        $scope.parkingContractSavedOk = false;

        $scope.parkingContractItem.parkingContract = $scope.parkingContract;

        ParkingContractItemsService.add($scope.parkingContractItem)
            .then(function (_) {
                $scope.parkingContractUpdatingInProcess = false;
                $scope.parkingContractSavedOk = true;

                $scope.parkingContractItems.push($scope.parkingContractItem);
                $scope.selectedParkingContractItem = $scope.parkingContractItem;
                $scope.initingNewParkingContractItem = false;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.parkingContractUpdatingInProcess = false;
            });
    };

    $scope.loadParkingContract = function () {
        $scope.parkingContractSavedOk = false;
        $scope.responseError = "";
        $scope.parkingContract = null;
        $scope.parkingContractItems = null;
        $scope.parkingContractLoading = true;

        if ($scope.selectedParkingContract === null) {
            $scope.parkingContractLoading = false;
            return;
        }

        var selectedParkingContractId = $scope.selectedParkingContract.item_id;

        $q.all([
            ParkingContractsService.get(selectedParkingContractId),
            ParkingContractItemsService.findByParkingContract(selectedParkingContractId)
        ]).then(function (result) {
            $scope.parkingContract = result[0].entity;
            $scope.parkingContractItems = result[1].entity;

            // find currently selected client id
            var selectedClientId = $scope.clients.filter(function (client) {
                return client.id === $scope.parkingContract.client.id;
            });
            if (selectedClientId.length === 1) {
                $scope.parkingContract.client = selectedClientId[0];
            }

            // find currently selected zone id
            var selectedZoneId = $scope.zones.filter(function (zone) {
                return zone.id === $scope.parkingContract.zone.id;
            });
            if (selectedZoneId.length === 1) {
                $scope.parkingContract.zone = selectedZoneId[0];
            }

            $scope.parkingContractLoading = false;
        }).catch(function (err) {
            $scope.responseError = $rootScope.getErrorMessage(err);
            $scope.parkingContractLoading = false;
        });
    };

    $scope.deleteParkingContractItem = function () {

        $scope.parkingContractUpdatingInProcess = true;
        $scope.responseError = false;
        $scope.parkingContractSavedOk = false;

        var parkingContractItemId = $scope.parkingContractItem.id;
        ParkingContractItemsService.delete(parkingContractItemId)
            .then(function (_) {
                $scope.parkingContractUpdatingInProcess = false;
                $scope.parkingContractSavedOk = true;

                var tmpParkingContractItems = $scope.parkingContractItems.filter(function (parkingContractItem) {
                    return parkingContractItem.id !== parkingContractItemId;
                });
                $scope.parkingContractItems = tmpParkingContractItems;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.parkingContractUpdatingInProcess = false;
            });
    };

    //TODO: is it needed?
    $scope.deleteParkingContract = function () {

        $scope.parkingContractUpdatingInProcess = true;
        $scope.responseError = false;
        $scope.parkingContractSavedOk = false;

        var parkingContractId = $scope.parkingContract.id;
        ParkingContractsService.delete(parkingContractId)
            .then(function (_) {
                $scope.parkingContractUpdatingInProcess = false;
                $scope.parkingContractSavedOk = true;

                var tmpParkingContracts = angular.copy($scope.parkingContracts);
                tmpParkingContracts = tmpParkingContracts.filter(function (parkingContract) {
                    return parkingContract.item_id !== parkingContractId;
                });

                $scope.parkingContracts = tmpParkingContracts;

                AuthService.updateParkingContractRoleAuthorisation();
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.parkingContractUpdatingInProcess = false;
            });
    };

    $scope.saveParkingContract = function () {
        $scope.parkingContractUpdatingInProcess = true;
        $scope.responseError = false;
        $scope.parkingContractSavedOk = false;
        ParkingContractsService.save($scope.parkingContract)
            .then(function (_) {
                $scope.parkingContractUpdatingInProcess = false;
                $scope.parkingContractSavedOk = true;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.parkingContractUpdatingInProcess = false;
            });
    };

    var authorisation = Session.getAuthorisation();
    var parkingContracts = authorisation['parking_contracts'];
    parkingContracts = parkingContracts["edit"] !== undefined ? parkingContracts["edit"] : [];
    $scope.parkingContracts = parkingContracts;

    $scope.isLoading = function () {
        return $scope.parkingContractsLoading
            || $scope.parkingContractLoading
            || $scope.parkingContractUpdatingInProcess};
});
