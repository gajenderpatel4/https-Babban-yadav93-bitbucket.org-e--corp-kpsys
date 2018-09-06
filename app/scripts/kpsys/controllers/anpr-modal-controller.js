'use strict';

angular.module('kpsysApp').controller('AnprModalController', function ($scope, $location, $uibModal, $uibModalInstance, AnprResource, AnprService, modalData) {

    $scope.modalData = modalData;
    $scope.obj = modalData.update;

    $scope.error = null;

    $scope.item = {
        device: {
            deviceType: 'CAMERA',
            deviceStatus: 'ACTIVE'
        },
        rule: {
            ruleType: 'LOG_ONLY',
            stopType: 'NONE',
            direction: 'OUT'
        },
        action: {
            actionType: 'DEFAULT'
        }
    };

    $scope.submitted = [false, false, false];

    $scope.enums = {
        ruleType: [
            {value: "LOG_ONLY", name: "Log only"},
            {value: "GURU_PARKING", name: "Guru Parking"},
            {value: "METRIC", name: "Metric"}
        ],
        stopType: [
            {value: "NONE", name: "None"},
            {value: "POSITIVE", name: "Positive"},
            {value: "NEGATIVE", name: "Negative"}
        ],
        direction: [
            {value: "OUT", name: "Out"},
            {value: "IN", name: "In"}
        ],
        deviceType: [
            {value: "CAMERA", name: "Camera"}
        ],
        deviceStatus: [
            {value: "ACTIVE", name: "Active"},
            {value: "DISABLED", name: "Disabled"}
        ],
        actionType: [
            {value: "DEFAULT", name: "Default"},
            {value: "POSITIVE", name: "Positive"},
            {value: "NEGATIVE", name: "Negative"}
        ]
    };

    $scope.clearForm = function () {
        $scope.item.device = {};
        $scope.item.rule = {};
        $scope.item.action = {};
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

    $scope.saveDevice = function (item) {
        $scope.submitted[0] = true;
        if ($scope.form.$invalid) {
            return;
        }
        AnprService.addDevice(item).then(function (response) {
            $uibModalInstance.close();
        });
    };

    $scope.saveRule = function (item) {
        $scope.submitted[1] = true;
        if ($scope.form.$invalid) {
            return;
        }
        AnprService.addRule(modalData.parentId, item).then(function (response) {
            $uibModalInstance.close();
        });
    };

    $scope.saveAction = function (item) {
        $scope.submitted[2] = true;
        if ($scope.form.$invalid) {
            return;
        }
        AnprService.addAction(modalData.deviceId, modalData.parentId, item).then(function (response) {
            $uibModalInstance.close();
        });
    };

    $scope.delete = function () {
        var id = modalData.id;
        var type = modalData.type;
        var deviceId = modalData.deviceId;
        var parentId = modalData.parentId;
        if (type === 'device') {
            AnprService.deleteDevice(id).then(
                function (_) {
                    $uibModalInstance.close();
                },
                function (response) {
                    if (response.data.error) {
                        $scope.error = response.data.error.message;
                    }
                });
        } else if (type === 'rule') {
            AnprService.deleteRule(deviceId, id).then(function (_) {
                $uibModalInstance.close();
            });
        } else if (type === 'action') {
            AnprService.deleteAction(deviceId, parentId, id).then(function (_) {
                $uibModalInstance.close();
            });
        }
    };

    $scope.update = function () {
        $scope.submitted[0] = true;
        if ($scope.form.$invalid) {
            return;
        }

        var type = modalData.type;
        var id = modalData.id;
        var deviceId = modalData.deviceId;
        var parentId = modalData.parentId;
        if (type === 'device') {
            AnprService.updateDevice(id, $scope.obj).then(function (_) {
                $uibModalInstance.close();
            });
        } else if (type === 'rule') {
            AnprService.updateRule(deviceId, id, $scope.obj).then(function (_) {
                $uibModalInstance.close();
            });
        } else if (type === 'action') {
            AnprService.updateAction(deviceId, parentId, id, $scope.obj).then(function (_) {
                $uibModalInstance.close();
            });
        }
    }

});
