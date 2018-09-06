'use strict';

angular.module('kpsysApp').factory('UserLocationResource', function ($resource) {
    return $resource('/api/dashboard/users/:userId/locations', {userId: '@userId'}, {
        'query': {
            method: 'GET', isArray: true, transformResponse: function (data) {
                return JSON.parse(data);
            }
        }
    });
});
