'use strict';

angular.module('kpsysApp').controller('TicketController', function ($scope, $filter, $location, $state, EnumsResource, TicketService, TICKET_FIELDS) {

    $scope.ticketId = null;
    $scope.loading = true;

    $scope.ticket = null;

    $scope.ticketActions = [{name: "Name", description: "description"}];

    var loadTicket = function () {
        $scope.loading = true;
        TicketService.getTicket($scope.ticketId)
            .then(function (response) {
                $scope.ticket = response.entity;
                $scope.loading = false;
            });
    };

    $scope.init = function () {
        $scope.ticketId = $location.path().split("/")[2];
        loadTicket();
    };

    $scope.back = function () {
        $state.go('fines');
    };

    $scope.save = function () {

    };

    $scope.ticketLocation = function (ticket) {
        return ticket.location.locationId + ' - ' + ticket.location.name;
    };

    $scope.amount = function (ticket) {
        return ticket.subBusiness.business.currcode + ' ' + ticket.subBusiness.business.origcurramnt;
    };

    $scope.balance = function (ticket) {
        return ticket.subBusiness.business.currcode + ' ' + ticket.subBusiness.business.totalcurramnt;
    };

    $scope.getFieldTitle = function (fieldName) {
        for (var i = 0; i < TICKET_FIELDS.length; i++) {
            var field = TICKET_FIELDS[i];
            if (field.name === fieldName) {
                return field.title;
            }
        }
        return '? ' + fieldName;
    };

});

