'use strict';

angular.module('kpsysApp').controller('AnprEventsController', function ($scope, $window, $log, $state, $uibModal, $translate, $interval,
                                                                        AnprService, AnprEventsService) {

    $scope.deviceId = null;
    $scope.eventId = null;

    $scope.devices = [];
    $scope.events = [];
    $scope.eventsMap = {};

    $scope.event = {};

    $scope.tableStyle = {
        'overflow': 'auto',
        'max-height': (window.innerHeight - 380) + 'px'
    };

    $scope.init = function () {
        AnprService.list().then(function (response) {
            $scope.devices = response.list;
            if ($scope.devices.length > 0) {
                $scope.selectDevice($scope.devices[0].id);
            }
        });

        $interval(function () {
            loadEvents();
        }, 30000);

    };

    function loadEvents() {

        var deviceId = $scope.deviceId;
        AnprEventsService.list(deviceId).then(function (response) {
            $scope.events = response.list;

            $scope.eventsMap = {};
            $scope.events.map(function (event) {
                $scope.eventsMap[event.id] = event;
            });

            if ($scope.eventId != null && !$scope.eventsMap[$scope.eventId]) {
                $scope.eventId = null;
                $scope.events = [];
                $scope.event = {};
            }

        })
    }

    $scope.selectDevice = function (deviceId) {
        $scope.deviceId = deviceId;
        loadEvents();
    };

    $scope.selectEvent = function (eventId) {
        $scope.eventId = eventId;
        $scope.event = $scope.eventsMap[eventId];
    };

    $scope.eventRowClass = function (eventId) {
        if (eventId === $scope.eventId) {
            return "info";
        }
    };

    $(window).on("resize.doResize", function () {
        $scope.$apply(function () {
            $scope.tableStyle = {
                'overflow': 'auto',
                'max-height': (window.innerHeight - 400) + 'px'
            };
        });
    });
});
