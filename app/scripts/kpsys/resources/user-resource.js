'use strict';

angular.module('kpsysApp').factory('UsersResource', function ($resource, PaginationConstants) {
    return {
        getUsersFiltered : $resource('/api/dashboard/users/filtered', {}, {}),
        getUsers : $resource('/api/dashboard/users', {}, {
            get : {
                method: 'GET', isArray: true, transformResponse: function (data, headers) {
                   var jsonData = JSON.parse(data);
                   headers()[PaginationConstants.PAGINATION_COUNT] = jsonData.count;
                   headers()[PaginationConstants.PAGINATION_START] = jsonData.start;
                   headers()[PaginationConstants.PAGINATION_LIMIT] = jsonData.limit;
                   return jsonData.list;
                }
            }
        }),
        createUser : $resource('/api/dashboard/users', {}, {
            create : {
                method:'POST', data: { user: {} }
            }
        })
    };
});
