'use strict';

angular.module('kpsysApp').factory('ClientResource', function ($resource) {
    return {
        findByHostname: $resource('/api/client/findbyhostname', {}, {
            'byHostName': {
                method: 'POST'
            }
        }),
        findClientCustomData: $resource('/api/client/findcustomdata', {}, {
            'clientCustomData': {
                method: 'POST'
            }
        }),
        findAllClients: $resource('/api/client/list', {}, {
            'list': {
                method: 'GET'
            }
        })
    };
});
