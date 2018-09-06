'use strict';

angular.module('kpsysApp').service('UsersService', function (UsersResource, PaginationConstants, $q) {
    return {
        getUsersFiltered: function (filter) {
            var defer = $q.defer();
            UsersResource.getUsersFiltered.get(filter, function (result) {
                defer.resolve(result);
            });
            return defer.promise;
        },
        getUsers: function (filter) {
            var defer = $q.defer();
            UsersResource.getUsers.get(filter, function (result, headers) {
                var promiseResult = {
                    list: result,
                    count: headers(PaginationConstants.PAGINATION_COUNT),
                    limit: headers(PaginationConstants.PAGINATION_LIMIT),
                    start: headers(PaginationConstants.PAGINATION_START)
                };
                defer.resolve(promiseResult);
            });
            return defer.promise;
        }
    };
});
