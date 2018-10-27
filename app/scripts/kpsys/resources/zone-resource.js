'use strict';

angular.module('kpsysApp').factory('ZoneResource', function ($resource) {
    return {
        findAllZones: $resource('/api/zone/list', {}, {
            'list': {
                method: 'GET', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        })
    };
});
