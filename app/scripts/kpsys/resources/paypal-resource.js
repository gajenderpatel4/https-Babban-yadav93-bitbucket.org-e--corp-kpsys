'use strict';

angular.module('kpsysApp').factory('PayPalResource', function ($resource) {
    return $resource('/api/paypal/proceed', {}, {
        'proceed': {
            method: 'POST', data: {}, transformResponse: function (data) {
                return JSON.parse(data);
            }
        }
    });
});
