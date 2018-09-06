'use strict';

angular.module('kpsysApp').controller('AnprController', function ($scope, $window, $log, $state, $uibModal, $translate, AuthService, AnprService) {

    $scope.treeInstance = {};
    $scope.treeData = {};
    $scope.devices = [];

    $scope.treeConfig = {
        core: {
            "check_callback": true
        },
        types: {
            "default": {
                "icon": "fa fa-folder icon-state-warning icon-lg"
            },
            "file": {
                "icon": "fa fa-file icon-state-warning icon-lg"
            }
        },
        state: {"key": "anprDevicesTreeState"},
        plugins: ["contextmenu", "dnd", "state", "types", "addHTML"],
        contextmenu: {
            items: function (o, cb) {
                var itemsPerType = {
                    root: {
                        createDevice: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'add')
                            },
                            "label": "Add device",
                            "action": function (data) {
                                openAddModal('device', o);
                            }
                        }
                    },
                    device: {
                        editDevice: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'edit')
                            },
                            "label": "Edit device",
                            "action": function (data) {
                                openEditModal('device', o);
                            }
                        },
                        createRule: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'add')
                            },
                            "label": "Add rule",
                            "action": function (data) {
                                openAddModal('rule', o);
                            }
                        },
                        deleteDevice: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'delete')
                            },
                            "label": "Delete device",
                            "action": function (data) {
                                openDeleteModal('device', o);
                            }
                        }
                    },
                    rule: {
                        editRule: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'edit')
                            },
                            "label": "Edit rule",
                            "action": function (data) {
                                openEditModal('rule', o);
                            }
                        },
                        moveUp: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return o.original.prev == null || !AuthService.hasRoleAuthorisation('ANPRGATE', 'edit')
                            },
                            "label": "Move up",
                            "action": function (data) {
                                move('up', 'rule', o);
                            }
                        },
                        moveDown: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return o.original.next == null || !AuthService.hasRoleAuthorisation('ANPRGATE', 'edit')
                            },
                            "label": "Move down",
                            "action": function (data) {
                                move('down', 'rule', o);
                            }
                        },
                        createAction: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'add')
                            },
                            "label": "Add action",
                            "action": function (data) {
                                openAddModal('action', o);
                            }
                        },
                        deleteRule: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'delete')
                            },
                            "label": "Delete rule",
                            "action": function (data) {
                                openDeleteModal('rule', o);
                            }
                        }
                    },
                    action: {
                        editAction: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'edit')
                            },
                            "label": "Edit action",
                            "action": function (data) {
                                openEditModal('action', o);
                            }
                        },
                        moveUp: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return o.original.prev == null || !AuthService.hasRoleAuthorisation('ANPRGATE', 'edit')
                            },
                            "label": "Move up",
                            "action": function (data) {
                                move('up', 'action', o);
                            }
                        },
                        moveDown: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return o.original.next == null || !AuthService.hasRoleAuthorisation('ANPRGATE', 'edit')
                            },
                            "label": "Move down",
                            "action": function (data) {
                                move('down', 'action', o);
                            }
                        },
                        deleteAction: {
                            "separator_before": false,
                            "separator_after": true,
                            "_disabled": function () {
                                return !AuthService.hasRoleAuthorisation('ANPRGATE', 'delete')
                            },
                            "label": "Delete action",
                            "action": function (data) {
                                openDeleteModal('action', o);
                            }
                        }
                    }
                };
                return itemsPerType[o.original.type];
            }
        },
        version: 1
    };

    $scope.ignoreModelChanges = function () {
        return false;
    };

    $scope.ready = function () {
        console.log('ready called');
    };

    function openAddModal(type, o) {
        var modalInstance = $uibModal.open({
            templateUrl: 'anpr-add-' + type + '-dialog.html',
            controller: 'AnprModalController',
            scope: $scope,
            resolve: {
                modalData: function () {
                    return {
                        parentId: o.original.id,
                        deviceId: o.original.parentId
                    }
                }
            }
        });
        modalInstance.result.then(
            function () {
                $scope.init();
            },
            function () {
                $log.info(type + ' add dialog dismissed');
            });
    }

    function openEditModal(type, o) {
        var modalInstance = $uibModal.open({
            templateUrl: 'anpr-edit-' + type + '-dialog.html',
            controller: 'AnprModalController',
            scope: $scope,
            resolve: {
                modalData: function () {
                    return {
                        type: type,
                        id: o.original.id,
                        itemName: o.original.text,
                        parentId: o.original.parentId,
                        deviceId: o.original.deviceId,
                        update: o.original.obj
                    }
                }
            }
        });
        modalInstance.result.then(
            function () {
                $scope.init();
            },
            function () {
                $log.info(type + ' edit dialog dismissed');
            });
    }

    function openDeleteModal(type, o) {
        var modalInstance = $uibModal.open({
            templateUrl: 'anpr-delete-dialog.html',
            controller: 'AnprModalController',
            scope: $scope,
            resolve: {
                modalData: function () {
                    return {
                        type: type,
                        id: o.original.id,
                        itemName: o.original.text,
                        parentId: o.original.parentId,
                        deviceId: o.original.deviceId
                    }
                }
            }
        });
        modalInstance.result.then(
            function () {
                $scope.init();
            },
            function () {
                $log.info(type + ' delete dialog dismissed');
            });
    }

    function move(direction, type, o) {
        AnprService.move(direction, type, o).then(function (_) {
            $scope.init();
        });
    }

    $scope.init = function () {
        AnprService.list().then(function (response) {
            $scope.devices = response.list;
            buildTree($scope.devices);
            console.log($scope.treeData);
            $scope.treeConfig.version++;
        });
    };

    function buildTree(devices) {
        $scope.treeData = {
            "text": "Root",
            "children": mapDevices(devices),
            "type": "root",
            "state": {
                "opened": true
            },
            "id": 'root'
        };
    }

    function mapDevices(devices) {
        return devices.map(function (device, i) {
            var prev = safeIdAccessor(devices, i - 1);
            var next = safeIdAccessor(devices, i + 1);
            return createDevice(device, prev, next);
        });
    }

    function createDevice(device, prev, next) {
        return {
            "text": device.deviceName,
            "icon": "fa fa-video-camera icon-state-success",
            "state": {
                "opened": true
            },
            "children": mapRules(device.id, device.rules),
            "type": "device",
            "parentId": 'root',
            "id": device.id,
            "prev": prev,
            "next": next,
            "obj": device
        };
    }

    function mapRules(deviceId, rules) {
        return rules.map(function (rule, i) {
            var prev = safeIdAccessor(rules, i - 1);
            var next = safeIdAccessor(rules, i + 1);
            return createRule(deviceId, rule, prev, next);
        });
    }

    function createRule(deviceId, rule, prev, next) {
        return {
            "text": rule.value,
            "icon": "fa fa-cogs icon-state-success",
            "state": {
                "opened": true
            },
            "children": mapActions(deviceId, rule.id, rule.actions),
            "type": "rule",
            "parentId": deviceId,
            "deviceId": deviceId,
            "id": rule.id,
            "prev": prev,
            "next": next,
            "obj": rule
        };
    }

    function mapActions(deviceId, ruleId, actions) {
        return actions.map(function (action, i) {
            var prev = safeIdAccessor(actions, i - 1);
            var next = safeIdAccessor(actions, i + 1);
            return createAction(deviceId, ruleId, action, prev, next);
        });
    }

    function createAction(deviceId, ruleId, action, prev, next) {
        return {
            "text": action.value,
            "icon": "fa fa-cog",
            "type": "action",
            "parentId": ruleId,
            "deviceId": deviceId,
            "id": action.id,
            "prev": prev,
            "next": next,
            "obj": action
        }
    }

    function safeArrayAccessor(arr, index, prop) {
        if (arr[index]) {
            return arr[index][prop];
        } else {
            return null;
        }
    }

    function safeIdAccessor(arr, index) {
        return safeArrayAccessor(arr, index, "id");
    }

});

$.jstree.plugins.addHTML = function (options, parent) {
    this.redraw_node = function (obj, deep,
                                 callback, force_draw) {
        obj = parent.redraw_node.call(
            this, obj, deep, callback, force_draw
        );
        if (obj) {
            var node = this.get_node($(obj).attr('id'));
            if (node &&
                node.data &&
                ( "addHTML" in node.data )) {
                $(obj).append(
                    "<div style='display: inline; margin-left: 50px;'>" +
                    node.data.addHTML +
                    "</div>"
                );
            }
        }
        return obj;
    };
};

$.jstree.defaults.addHTML = {};
