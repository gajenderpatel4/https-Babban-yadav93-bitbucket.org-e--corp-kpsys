'use strict';

angular.module('kpsysApp').service('LicensePlatesService', function (LicensePlatesResource, $q) {
    this.search = function (p) {
        var defer = $q.defer();
        LicensePlatesResource.search(p, function (result) {
            defer.resolve(result);
        }, function(ex){
            defer.reject(ex);
        });
        return defer.promise;
    };
});
