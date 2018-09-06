'use strict';

angular.module('kpsysApp').factory('EnumsResource', function ($resource) {
    return {
        getEnums: $resource('/api/dashboard/enums', {}, {
            get: {
                method: 'GET', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        })
    };
});
