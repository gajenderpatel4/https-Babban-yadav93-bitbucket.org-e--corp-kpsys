'use strict';

angular.module('kpsysApp').service('PayPalService', function (PayPalResource, $q) {
    this.proceed = function (p) {
        var defer = $q.defer();
        PayPalResource.proceed(p, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };
});
