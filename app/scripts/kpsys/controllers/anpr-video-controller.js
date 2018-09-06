'use strict';

angular.module('kpsysApp').controller('AnprVideoController', function ($scope, $window, $timeout, $q, $log, $state, $uibModal, $translate, $interval,
                                                                       AnprService, AnprVideoResource) {

    $scope.deviceId = null;
    $scope.devices = [];
    $scope.rectangles = [];

    $scope.currentRectangle = null;
    $scope.rectangle = null;

    $scope.cameras = [0, 1];
    $scope.cameraUrl = null;
    $scope.cameraUrlSuffix = ['', ''];

    $scope.cameraId = null;

    var canvas = null;
    var ctx = null;

    $scope.loadDevices = function () {
        AnprService.list().then(function (response) {
            $scope.devices = response.list;
            if ($scope.devices.length > 0) {
                $scope.selectDevice($scope.devices[0].id);
            }
        });
    };

    $scope.init = function (camera) {
        $scope.cameraId = camera;
        $timeout(function () {
            initCanvas();
        });
    };

    function prepareCameraMask(rect) {
        var x1 = Math.ceil(rect.x1);
        var x2 = Math.ceil(rect.x2);
        var y1 = Math.ceil(rect.y1);
        var y2 = Math.ceil(rect.y2);
        return x1 + "," + y1 + " " +
            x2 + "," + y1 + " " +
            x2 + "," + y2 + " " +
            x1 + "," + y2
    }

    function parseCameraMask(mask) {
        if (!angular.isDefined(mask)) {
            return null;
        }
        var points = mask.split(' ');
        var left = points[0];
        var right = points[2];
        return {
            x1: left.split(',')[0],
            y1: left.split(',')[1],
            x2: right.split(',')[0],
            y2: right.split(',')[1]
        }
    }

    function loadRectangle(deviceId) {
        var defer = $q.defer();
        AnprVideoResource.rectangle.get({deviceId: deviceId}, function (result) {
            defer.resolve(result);
        });
        defer.promise.then(function (response) {
            $scope.rectangles = $scope.cameras.map(function (cameraId) {
                return parseCameraMask(response.entity['camera' + cameraId + 'Mask']);
            });
            $scope.$broadcast('draw-previous');
        });
    }

    $scope.$on('draw-previous', function () {
        if ($scope.cameraId != null) {
            $scope.rectangle = $scope.$parent.rectangles[$scope.cameraId];
            clearCanvas();
            drawRectangle($scope.rectangle, 'green');
        }
    });

    $scope.saveRectangle = function () {
        var defer = $q.defer();
        var update = {};
        update['camera' + $scope.cameraId + 'Mask'] = prepareCameraMask($scope.currentRectangle);
        AnprVideoResource.rectangle.update({deviceId: $scope.$parent.deviceId}, update, function (result) {
            defer.resolve(result);
        });
        defer.promise.then(function (response) {
            $scope.currentRectangle = null;
            clearCanvas();
            var rect = parseCameraMask(response.entity['camera' + $scope.cameraId + 'Mask']);
            $scope.rectangle = rect;
            drawRectangle(rect, 'green');
        });
    };

    $scope.discardRectangle = function () {
        $scope.currentRectangle = null;
        clearCanvas();
        drawRectangle($scope.rectangle, 'green');
    };

    $scope.selectDevice = function (deviceId) {
        $scope.deviceId = deviceId;
        var device = $scope.devices.filter(function (device) {
            return device.id == deviceId;
        })[0];
        $scope.cameraUrl = device.address;
        loadRectangle(deviceId);
    };

    var lastMouseX = 0;
    var lastMouseY = 0;
    var mouseX = 0;
    var mouseY = 0;
    var mouseDown = false;

    function initCanvas() {
        canvas = document.getElementById('canvas' + $scope.cameraId);
        ctx = canvas.getContext('2d');

        var videoContainer = document.getElementById('video-container' + $scope.cameraId);
        var video = document.getElementById('video' + $scope.cameraId);
        var _void = document.getElementById('void' + $scope.cameraId).getBoundingClientRect();

        $(videoContainer)
            .css('top', _void.top + $scope.cameraId * (canvas.height + 80))
            .css('left', _void.left - 20);
        $(canvas)
            .css('display', 'inline-block');
        $(video)
            .css('display', 'inline-block');

        $(canvas).on('mousedown', function (e) {
            var mousePos = getCanvasMousePos(canvas, e);
            lastMouseX = mousePos.x;
            lastMouseY = mousePos.y;
            mouseDown = true;
        });

        $(canvas).on('mouseup', function (e) {
            mouseDown = false;
            if (mouseX != lastMouseX && mouseY != lastMouseY) {
                mutateScope("currentRectangle", {
                    x1: Math.min(mouseX, lastMouseX),
                    x2: Math.max(mouseX, lastMouseX),
                    y1: Math.min(mouseY, lastMouseY),
                    y2: Math.max(mouseY, lastMouseY)
                });
            }

        });

        $(canvas).on('mousemove', function (e) {
            var mousePos = getCanvasMousePos(canvas, e);
            mouseX = mousePos.x;
            mouseY = mousePos.y;

            if (mouseDown) {
                var width = mouseX - lastMouseX;
                var height = mouseY - lastMouseY;
                clearCanvas();
                if ($scope.rectangle !== null) {
                    drawRectangle($scope.rectangle, "green");
                }
                drawRectangle0(lastMouseX, lastMouseY, width, height, 'black', 1);
            }
        });
    }

    function getCanvasMousePos(canvas, evt) {
        var rect = canvas.getBoundingClientRect();
        return {
            x: (evt.clientX - rect.left) / (rect.right - rect.left) * canvas.width,
            y: (evt.clientY - rect.top) / (rect.bottom - rect.top) * canvas.height
        };
    }

    function clearCanvas() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
    }

    function drawRectangle(rect, style) {
        if (rect == null) {
            return;
        }
        var w = rect.x2 - rect.x1;
        var h = rect.y2 - rect.y1;
        drawRectangle0(rect.x1, rect.y1, w, h, style);
    }

    function drawRectangle0(x, y, w, h, style, width) {
        ctx.beginPath();
        ctx.rect(x, y, w, h);
        ctx.strokeStyle = style;
        ctx.lineWidth = width;
        ctx.stroke();
    }

    function getScope() {
        return angular.element('#video-container' + $scope.cameraId).scope();
    }

    function mutateScope(attr, value) {
        var scope = getScope();
        scope.$apply(function () {
            scope[attr] = value;
        })
    }

});
