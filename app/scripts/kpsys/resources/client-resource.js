'use strict';

angular.module('kpsysApp').factory('ClientResource', function ($resource) {
    return {
        findByHostname: $resource('/api/client/findbyhostname', {}, {
            'byHostName': {
                method: 'POST', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        }),
        findClientCustomData: $resource('/api/client/findcustomdata', {}, {
            'clientCustomData': {
                method: 'POST', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        })
    };
});
