'use strict';

angular.module('kpsysApp').factory('ParkingContractsResource', function ($resource) {
    return $resource('/api/parkingcontract/:parkingContractId', {parkingContractId: '@parkingContractId'}, {
        'get': {
            method: 'GET', transformResponse: function (data) {
                return JSON.parse(data);
            }
        },
        'save': {
            method: 'POST', transformResponse: function (data) {
                return JSON.parse(data);
            }
        }
    });
});
