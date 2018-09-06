'use strict';

angular.module('kpsysApp').service('AnprService', function ($q, AnprResource) {

    this.list = function () {
        var defer = $q.defer();
        AnprResource.devices.get({}, function (result) {
            var promiseResult = {
                list: result
            };
            defer.resolve(promiseResult);
        });
        return defer.promise;
    };

    this.addDevice = function (device) {
        var defer = $q.defer();
        AnprResource.devices.add({}, device, function (result) {
            defer.resolve(result);
        });
        return defer.promise;
    };
    this.addRule = function (deviceId, rule) {
        var defer = $q.defer();
        AnprResource.rules.add({deviceId: deviceId}, rule, function (result) {
            defer.resolve(result);
        });
        return defer.promise;
    };
    this.addAction = function (deviceId, ruleId, action) {
        var defer = $q.defer();
        AnprResource.actions.add({deviceId: deviceId, ruleId: ruleId}, action, function (result) {
            defer.resolve(result);
        });
        return defer.promise;
    };

    this.deleteDevice = function (deviceId) {
        var defer = $q.defer();
        AnprResource.device.delete({deviceId: deviceId}, function (result) {
            defer.resolve(result);
        }, function (result) {
            defer.reject(result);
        });
        return defer.promise;
    };
    this.deleteRule = function (deviceId, ruleId) {
        var defer = $q.defer();
        AnprResource.rule.delete({deviceId: deviceId, ruleId: ruleId}, function (result) {
            defer.resolve(result);
        });
        return defer.promise;
    };
    this.deleteAction = function (deviceId, ruleId, actionId) {
        var defer = $q.defer();
        AnprResource.action.delete({deviceId: deviceId, ruleId: ruleId, actionId: actionId}, function (result) {
            defer.resolve(result);
        });
        return defer.promise;
    };

    this.updateDevice = function (deviceId, update) {
        var defer = $q.defer();
        AnprResource.device.update({deviceId: deviceId}, update, function (result) {
            defer.resolve(result);
        }, function (result) {
            defer.reject(result);
        });
        return defer.promise;
    };
    this.updateRule = function (deviceId, ruleId, update) {
        var defer = $q.defer();
        AnprResource.rule.update({deviceId: deviceId, ruleId: ruleId}, update, function (result) {
            defer.resolve(result);
        });
        return defer.promise;
    };
    this.updateAction = function (deviceId, ruleId, actionId, update) {
        var defer = $q.defer();
        AnprResource.action.update({deviceId: deviceId, ruleId: ruleId, actionId: actionId}, update, function (result) {
            defer.resolve(result);
        });
        return defer.promise;
    };
    this.move = function (direction, type, o) {
        var id = o.original.id;
        var parentId = o.original.parentId;
        var deviceId = o.original.deviceId;
        var reorderRequest = {
            type: 'SWAP',
            id: direction === 'up' ? o.original.prev
                : direction === 'down' ? o.original.next
                    : ''
        };

        var defer = $q.defer();

        if (type == 'rule') {
            AnprResource.ruleOrder.update({deviceId: deviceId, ruleId: id}, reorderRequest, function (result) {
                defer.resolve(result);
            })
        } else if (type == 'action') {
            AnprResource.actionOrder.update({deviceId: deviceId, ruleId: parentId, actionId: id}, reorderRequest, function (result) {
                defer.resolve(result);
            })
        }
        return defer.promise;
    }

});
