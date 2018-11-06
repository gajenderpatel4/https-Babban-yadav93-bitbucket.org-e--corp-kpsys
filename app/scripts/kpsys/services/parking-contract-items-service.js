'use strict';

angular.module('kpsysApp').service('ParkingContractItemsService', function (ParkingContractItemsResource, $q) {
    this.findByParkingContract = function (p) {
        var defer = $q.defer();
        ParkingContractItemsResource.list.get({parkingContractId: p}, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    this.add = function (parkingContractItem) {
        var defer = $q.defer();
        ParkingContractItemsResource.item.add(parkingContractItem, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    this.delete = function (parkingContractItemId) {
        var defer = $q.defer();
        ParkingContractItemsResource.actions.delete({parkingContractItemId: parkingContractItemId}, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    //TODO: update
    this.update = function (parkingContractItemId, update) {
        var defer = $q.defer();
        ParkingContractItemsResource.actions.update({parkingContractItemId: parkingContractItemId}, update, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };
});
