'use strict';

angular.module('kpsysApp').factory('ParkingContractsResource', function ($resource) {
    return $resource('/api/parkingcontract/:parkingContractId', {parkingContractId: '@parkingContractId'}, {
        'get': {
            method: 'GET'
        },
        'update': {
            method: 'PUT'
        }
    });
});
