'use strict';

angular.module('kpsysApp').factory('UsersResource', function ($resource) {
    return {
        user: $resource('/api/users', {}, {
            get: {
                method: "POST"
            },
            update: {
                method: "PUT"
            }
        })

    };
});
