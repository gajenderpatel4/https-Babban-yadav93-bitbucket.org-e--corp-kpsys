'use strict';

angular.module('kpsysApp').factory('ClientResource', function ($resource) {
    return $resource('/api/client/findbyhostname', {}, {
        'findByHostname': {
            method: 'POST', transformResponse: function (data) {
                return JSON.parse(data);
            }
        }
    });
});
