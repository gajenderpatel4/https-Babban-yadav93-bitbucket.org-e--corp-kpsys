'use strict';

angular.module('kpsysApp').factory('ParkingContractItemsResource', function ($resource) {
    return $resource('/api/parkingcontractitem/findByParkingContract/:parkingContractId', {parkingContractId: '@parkingContractId'}, {
        'findByParkingContract': {
            method: 'GET', transformResponse: function (data) {
                return JSON.parse(data);
            }
        }
    });
});
