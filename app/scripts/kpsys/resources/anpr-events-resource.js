'use strict';

angular.module('kpsysApp').factory('AnprEventsResource', function ($resource) {
    return {
        events: $resource('/api/anpr/events/:deviceId/log', {deviceId: '@deviceId'}, {
            get: {
                method: 'GET', isArray: true, transformResponse: function (data) {
                    var jsonData = JSON.parse(data);
                    return jsonData.list;
                }
            }
        })
    }
});
