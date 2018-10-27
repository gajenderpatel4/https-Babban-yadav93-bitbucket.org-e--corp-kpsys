'use strict';

angular.module('kpsysApp').service('ZoneService', function (ZoneResource, $q) {
    this.findAllZones = function () {
        var defer = $q.defer();
        ZoneResource.findAllZones.list(function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };
});
