'use strict';

angular.module('kpsysApp').service('ParkingContractItemsService', function (ParkingContractItemsResource, $q) {
    this.findByParkingContract = function (p) {
        var defer = $q.defer();
        ParkingContractItemsResource.findByParkingContract.find({parkingContractId: p}, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    this.save = function (parkingContractItem) {
        var defer = $q.defer();
        ParkingContractItemsResource.save.save(parkingContractItem, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    this.delete = function (parkingContractItemId) {
        var defer = $q.defer();
        ParkingContractItemsResource.parkingContractItem.delete({parkingContractItemId: parkingContractItemId}, function (result) {
            defer.resolve(result);
        }, function (result) {
            defer.reject(result);
        });
        return defer.promise;
    };
});
