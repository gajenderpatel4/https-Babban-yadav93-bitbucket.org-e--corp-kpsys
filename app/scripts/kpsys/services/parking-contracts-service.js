'use strict';

angular.module('kpsysApp').service('ParkingContractsService', function (ParkingContractsResource, $q) {
    this.get = function (p) {
        var defer = $q.defer();
        ParkingContractsResource.get({parkingContractId: p}, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };
});