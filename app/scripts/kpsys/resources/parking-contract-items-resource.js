'use strict';

angular.module('kpsysApp').factory('ParkingContractItemsResource', function ($resource) {

    return {
        list: $resource('/api/parkingcontractitem/:parkingContractId/list', {parkingContractId: '@parkingContractId'}, {
            get: {
                method: 'GET', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        }),
        item: $resource('/api/parkingcontractitem', {}, {
            add: {
                method: 'POST', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        }),
        actions: $resource('/api/parkingcontractitem/:parkingContractItemId', {parkingContractIemId: '@parkingContractItemId'}, {
            delete: {
                method: 'DELETE', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            },
            update: {
                method: 'PUT', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        })
    };
});
