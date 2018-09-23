'use strict';

angular.module('kpsysApp').factory('PayPalResource', function ($resource) {
    return {
        payPalProceed: $resource('/api/paypal/proceed', {}, {
            'proceed': {
                method: 'POST', data: {}, transformResponse: function (data) {
                    try {
                        return JSON.parse(data);
                    } catch (e) {
                        return {};
                    }
                }
            }
        }),
        paypalCheckout: $resource('/api/paypal/checkout', {}, {
            'checkout': {
                method: 'POST', data: {}, transformResponse: function (data) {
                    try {
                        return JSON.parse(data);
                    } catch (e) {
                        return {};
                    }
                }
            }
        })
    };
});
