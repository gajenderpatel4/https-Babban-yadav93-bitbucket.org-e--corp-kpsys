'use strict';

angular.module('kpsysApp').factory('LicensePlatesResource', function ($resource) {
    return $resource('/api/service/query', {}, {
        'search': {
            method: 'POST', data: {licensePlate: licensePlate}, transformResponse: function (data) {
                return JSON.parse(data);
            }
        }
    });
});
