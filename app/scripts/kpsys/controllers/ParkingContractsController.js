'use strict';

angular.module('kpsysApp').controller('ParkingContractsCtrl', function ($q, $scope, $rootScope, ParkingContractsService, ParkingContractItemsService, ClientService, ZoneService, Session) {

    $scope.isArray = angular.isArray;

    $scope.init = function () {

        var authorisation = Session.getAuthorisation();
        var parkingContracts = authorisation['parking_contracts'];
        parkingContracts = parkingContracts["edit"] !== undefined ? parkingContracts["edit"] : [];
        $scope.parkingContracts = parkingContracts;

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
        var theClient = $scope.clients.find(function (client) {
            return client.id === $scope.parkingContractItem.client.id;
        });
        if (theClient !== undefined) {
            $scope.parkingContractItem.client = theClient;
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

                // update property "identificator" in place
                var tmpParkingContractItem = $scope.parkingContractItems.find(function (parkingContractItem) {
                    return parkingContractItem.id === parkingContractItemId;
                });
                tmpParkingContractItem.identificator = $scope.parkingContractItem.identificator;
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
            .then(function (response) {
                $scope.parkingContractUpdatingInProcess = false;
                $scope.parkingContractSavedOk = true;

                $scope.parkingContractItems.push($scope.parkingContractItem);
                $scope.selectedParkingContractItem = $scope.parkingContractItem;
                $scope.initingNewParkingContractItem = false;

                // assign an id
                $scope.parkingContractItem.id = response.entity.id;
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
            var theClient = $scope.clients.find(function (client) {
                return client.id === $scope.parkingContract.client.id;
            });
            if (theClient !== undefined) {
                $scope.parkingContract.client = theClient;
            }

            // find currently selected zone id
            var theZone = $scope.zones.find(function (zone) {
                return zone.id === $scope.parkingContract.zone.id;
            });
            if (theZone !== undefined) {
                $scope.parkingContract.zone = theZone;
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

                $scope.parkingContractItems = $scope.parkingContractItems.filter(function (parkingContractItem) {
                    return parkingContractItem.id !== parkingContractItemId;
                });
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

                //TODO: implement better way
                AuthService.updateParkingContractRoleAuthorisation();
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.parkingContractUpdatingInProcess = false;
            });
    };

    $scope.updateParkingContract = function () {
        $scope.parkingContractUpdatingInProcess = true;
        $scope.responseError = false;
        $scope.parkingContractSavedOk = false;
        ParkingContractsService.update($scope.parkingContract.id, $scope.parkingContract)
            .then(function (_) {
                $scope.parkingContractUpdatingInProcess = false;
                $scope.parkingContractSavedOk = true;
                // update property "name" in place
                var tmpParkingContract = $scope.parkingContracts.find(function (parkingContract) {
                    return parkingContract.item_id === $scope.parkingContract.id;
                });
                tmpParkingContract.name = $scope.parkingContract.name;

                updateAuthorisationItemName("edit", $scope.parkingContract.id, $scope.parkingContract.name);
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.parkingContractUpdatingInProcess = false;
            });
    };

    function updateAuthorisationItemName(roleType, itemId, itemNewName) {
        var authorisation = Session.getAuthorisation();
        if (authorisation["parking_contracts"] !== undefined) {
            if (authorisation["parking_contracts"][roleType] !== undefined) {
                for (var i = 0; i < authorisation["parking_contracts"][roleType].length; ++i) {
                    if (authorisation["parking_contracts"][roleType][i].item_id === itemId) {
                        authorisation["parking_contracts"][roleType][i].name = itemNewName;
                        Session.updateAuthorisation(authorisation);
                        break;
                    }
                }
            }
        }
    }

    $scope.isLoading = function () {
        return $scope.parkingContractsLoading
            || $scope.parkingContractLoading
            || $scope.parkingContractUpdatingInProcess
    };
});
