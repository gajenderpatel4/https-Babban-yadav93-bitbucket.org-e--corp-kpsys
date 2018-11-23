'use strict';

angular.module('kpsysApp').service('UsersService', function (UsersResource, $q) {
    return {
        getCurrentUser: function () {
            var defer = $q.defer();
            UsersResource.user.get(function (result) {
                defer.resolve(result);
            });
            return defer.promise;
        },
        update: function (update) {
            var defer = $q.defer();
            UsersResource.user.update(update, function (result) {
                defer.resolve(result);
            }, function (ex) {
                defer.reject(ex);
            });
            return defer.promise;
        }
    };
});
