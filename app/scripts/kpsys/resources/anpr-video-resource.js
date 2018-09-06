'use strict';

angular.module('kpsysApp').factory('AnprVideoResource', function ($resource) {
    return {
        rectangle: $resource('/api/anpr/devices/:deviceId/rectangle', {deviceId: '@deviceId'}, {
            update: {
                method: 'PUT'
            },
            get: {
                method: 'GET'
            }
        })
    }
});
