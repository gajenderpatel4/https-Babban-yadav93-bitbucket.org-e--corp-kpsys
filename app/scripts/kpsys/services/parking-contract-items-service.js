'use strict';

angular.module('kpsysApp').service('ParkingContractItemsService', function (ParkingContractItemsResource, $q) {
    this.findByParkingContract = function (p) {
        var defer = $q.defer();
        ParkingContractItemsResource.findByParkingContract({parkingContractId: p}, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };
});
