'use strict';

angular.module('kpsysApp').factory('PayPalResource', function ($resource) {
    return $resource('/api/paypal/proceed', {}, {
        'proceed': {
            method: 'POST', data: {}, transformResponse: function (data) {
                try {
                    return JSON.parse(data);
                } catch (e) {
                    return {};
                }
            }
        }
    });
});
