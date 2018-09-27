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
        paypalConfirm: $resource('/api/paypal/confirm', {}, {
            'confirm': {
                method: 'POST', data: {}, transformResponse: function (data) {
                    try {
                        return JSON.parse(data);
                    } catch (e) {
                        return {};
                    }
                }
            }
        }),
        paypalCheck: $resource('/api/paypal/check', {}, {
            'check': {
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
