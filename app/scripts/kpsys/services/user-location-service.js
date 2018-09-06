'use strict';

angular.module('kpsysApp').service('UserLocationService', function (UserLocationResource, $q) {
    this.query = function (filter) {
        var defer = $q.defer();

        UserLocationResource.query(filter, function (result) {
            var promiseResult = {
                list: result
            };

            defer.resolve(promiseResult);
        });

        return defer.promise;
    };
});
