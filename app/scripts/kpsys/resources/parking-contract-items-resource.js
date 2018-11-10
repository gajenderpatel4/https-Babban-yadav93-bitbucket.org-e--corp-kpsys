'use strict';

angular.module('kpsysApp').factory('ParkingContractItemsResource', function ($resource) {

    return {
        list: $resource('/api/parkingcontractitem/:parkingContractId/list', {parkingContractId: '@parkingContractId'}, {
            get: {
                method: 'GET'
            }
        }),
        item: $resource('/api/parkingcontractitem', {}, {
            add: {
                method: 'POST'
            }
        }),
        actions: $resource('/api/parkingcontractitem/:parkingContractItemId', {parkingContractIemId: '@parkingContractItemId'}, {
            delete: {
                method: 'DELETE'
            },
            update: {
                method: 'PUT'
            }
        })
    };
});
