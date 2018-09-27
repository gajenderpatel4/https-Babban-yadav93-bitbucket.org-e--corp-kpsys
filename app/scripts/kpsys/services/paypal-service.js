'use strict';

angular.module('kpsysApp').service('PayPalService', function (PayPalResource, $q) {
    this.proceed = function (p) {
        var defer = $q.defer();
        PayPalResource.payPalProceed.proceed(p, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    this.confirm = function (p) {
        var defer = $q.defer();
        PayPalResource.paypalConfirm.confirm(p, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };

    this.check = function (p) {
        var defer = $q.defer();
        PayPalResource.paypalCheck.check(p, function (result) {
            defer.resolve(result);
        }, function (ex) {
            defer.reject(ex);
        });
        return defer.promise;
    };
});
