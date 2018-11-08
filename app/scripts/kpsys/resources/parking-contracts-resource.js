'use strict';

angular.module('kpsysApp').factory('ParkingContractsResource', function ($resource) {
    return $resource('/api/parkingcontract/:parkingContractId', {parkingContractId: '@parkingContractId'}, {
        'get': {
            method: 'GET', transformResponse: function (data) {
                return JSON.parse(data);
            }
        },
        'update': {
            method: 'PUT', transformResponse: function (data) {
                return JSON.parse(data);
            }
        }
    });
});
