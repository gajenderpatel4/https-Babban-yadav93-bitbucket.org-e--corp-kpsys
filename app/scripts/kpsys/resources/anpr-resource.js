'use strict';

angular.module('kpsysApp').factory('AnprResource', function ($resource) {
    return {
        devices: $resource('/api/anpr/devices', {}, {
            get: {
                method: 'GET', isArray: true, transformResponse: function (data) {
                    var jsonData = JSON.parse(data);
                    return jsonData.list;
                }
            },
            add: {
                method: 'POST', transformResponse: function (data) {
                    return data;
                }
            }
        }),
        device: $resource('/api/anpr/devices/:deviceId', {deviceId: '@deviceId'}, {
            delete: {
                method: 'DELETE'
            },
            update: {
                method: 'PUT'
            }
        }),
        rules: $resource('/api/anpr/devices/:deviceId/rule', {deviceId: '@deviceId'}, {
            add: {
                method: 'POST', transformResponse: function (data) {
                    return data;
                }
            },
            delete: {
                method: 'DELETE'
            }
        }),
        rule: $resource('/api/anpr/devices/:deviceId/rule/:ruleId', {deviceId: '@deviceId', ruleId: '@ruleId'}, {
            delete: {
                method: 'DELETE'
            },
            update: {
                method: 'PUT'
            }
        }),
        ruleOrder: $resource('/api/anpr/devices/:deviceId/rule/:ruleId/order', {deviceId: '@deviceId', ruleId: '@ruleId'}, {
            update: {
                method: 'PUT'
            }
        }),
        actions: $resource('/api/anpr/devices/:deviceId/rule/:ruleId/action', {deviceId: '@deviceId', ruleId: '@ruleId'}, {
            add: {
                method: 'POST', transformResponse: function (data) {
                    return data;
                }
            },
            delete: {
                method: 'DELETE'
            }
        }),
        action: $resource('/api/anpr/devices/:deviceId/rule/:ruleId/action/:actionId', {
                deviceId: '@deviceId',
                ruleId: '@ruleId',
                action: '@actionId'
            },
            {
                delete: {
                    method: 'DELETE'
                },
                update: {
                    method: 'PUT'
                }
            }),
        actionOrder: $resource('/api/anpr/devices/:deviceId/rule/:ruleId/action/:actionId/order', {
                deviceId: '@deviceId',
                ruleId: '@ruleId',
                action: '@actionId'
            },
            {
                update: {
                    method: 'PUT'
                }
            })
    }
});
