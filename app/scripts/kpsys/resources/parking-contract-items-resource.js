'use strict';

angular.module('kpsysApp').factory('ParkingContractItemsResource', function ($resource) {

    return {
        findByParkingContract: $resource('/api/parkingcontractitem/findByParkingContract/:parkingContractId', {parkingContractId: '@parkingContractId'}, {
            find: {
                method: 'GET', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        }),
        save: $resource('/api/parkingcontractitem', {}, {
            'save:': {
                method: 'POST', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        }),
        parkingContractItem: $resource('/api/parkingcontractitem/:parkingContractItemId', {parkingContractIemId: '@parkingContractItemId'}, {
            'delete': {
                method: 'DELETE', transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        })
    };
});
