'use strict';

angular.module('kpsysApp').service('LicensePlatesService', function (LicensePlatesResource, $q) {
    this.query = function (val) {
        var defer = $q.defer();
        LicensePlatesResource.search({licensePlate: val}, function (result) {
            defer.resolve(result);
        }, function(ex){
            defer.reject(ex);
        });
        return defer.promise;
    };
});
