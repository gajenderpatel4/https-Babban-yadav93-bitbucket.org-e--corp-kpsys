'use strict';

angular.module('kpsysApp').service('ClientService', function (ClientResource, $q) {
    this.findByHostname = function (p) {
        var defer = $q.defer();
        ClientResource.findByHostname.byHostName(p, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    this.findClientCustomData = function (p) {
        var defer = $q.defer();
        ClientResource.findClientCustomData.clientCustomData(p, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    }
});
