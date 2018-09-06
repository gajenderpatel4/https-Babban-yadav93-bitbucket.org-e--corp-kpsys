'use strict';

angular.module('kpsysApp').controller('TicketsController', function ($scope, $window, $state, EnumsResource, TicketService, LocationResource, UsersService, TICKET_FIELDS) {

    var selectFields = ['location', 'user'];
    var enumTypes = ['com.kpsys.domain.enums.BusinessStatus'];
    var columnNames = [
        "subtidno",
        "b.busnstatnmbr",
        "b.extnbusnstatnmbr",
        "u.username",
        "b.clntstrsidno",
        "l.locationId",
        "l.name",
        "nmbrplte",
        "v.vltndscr",
        "b.busnissutmst",
        "b.busndueedate",
        "b.origcurramnt",
        "c.ctryname"
    ];

    $scope.tickets = [];
    $scope.loading = true;
    $scope.searchQuery = '';
    $scope.select = {
        location: null,
        user: null
    };
    $scope.locations = [];
    $scope.users = [];
    $scope.enums = {};

    $scope.columns = TICKET_FIELDS.filter(function (ticketField) {
        for (var i = 0; i < columnNames.length; i++) {
            if (columnNames[i] === ticketField.key) {
                return true;
            }
        }
        return false;
    });

    $scope.reset = function () {
        $scope.search = {
            ticketNumber: null,
            locationId: null,
            userId: null,
            licensePlate: null,
            startDate: null,
            endDate: null
        };
        $scope.select = {
            location: null,
            user: null
        };
        getTickets();
        getEnums();
    };

    $scope.init = function () {
        $scope.reset();
        LocationResource.query({}, function (result) {
            $scope.locations = result;
        });
        UsersService.getUsersFiltered({}).then(function (result) {
            $scope.users = result.list;
        });
    };

    // paging
    $scope.pagination = {
        currentPage: 1,
        pageSize: 200,
        count: 0,
        orderType: 'DESC',
        orderBy: 'subtidno'
    };

    $scope.sort = function (key) {
        $scope.pagination.orderBy = key;
        $scope.pagination.orderType = $scope.pagination.orderType === 'DESC' ? 'ASC' : 'DESC';
        $scope.pageChanged();
    };

    $scope.pageChanged = function () {
        getTickets();
    };

    $scope.doSearch = function () {
        getTickets();
    };

    $scope.clearSelection = function (type) {
        $scope.select[type] = null;
        $scope.search[type + 'Id'] = null;
    };

    $scope.edit = function (ticketId) {
        $window.localStorage.setItem('tickets', JSON.stringify($scope.tickets));
        $window.localStorage.setItem('ticketsSearch', JSON.stringify($scope.search));
        $state.go('fineEdit', {ticketId: ticketId});
    };

    function getEnums() {
        enumTypes.forEach(function (enumType) {
            EnumsResource.getEnums.get({type: enumType}, function (result) {
                console.log(result);
                $scope.enums[enumType] = result.values;
            });
        });
    }

    $scope.getEnumValue = function (type, code) {
        var values = $scope.enums[type];
        if (values == null) {
            return code;
        }
        var value = values.find(function (v) {
            return v.value === code;
        });
        if (angular.isUndefined(value)) {
            return code;
        }
        if (value.title) {
            return value.title;
        }
        if (value.messageCode) {
            return value.messageCode;
        }
    };

    function loadTickets() {
        $scope.loading = true;
        selectFields.forEach(function (selectField) {
            var f = $scope.select[selectField];
            if (f) {
                $scope.search[selectField + 'Id'] = f[selectField + 'Id'];
            }
        });
        TicketService.getTickets({
            start: ($scope.pagination.currentPage - 1) * $scope.pagination.pageSize,
            limit: $scope.pagination.pageSize,
            orderType: $scope.pagination.orderType,
            orderBy: $scope.pagination.orderBy,
            search: $scope.search
        }).then(function (response) {
            $scope.tickets = response;
            $scope.loading = false;
        });

    }

    function getTickets() {
        if (angular.isDefined($window.localStorage.tickets)) {
            try {
                $scope.tickets = JSON.parse($window.localStorage.getItem('tickets'));
                $scope.search = JSON.parse($window.localStorage.getItem('ticketsSearch'));
                $scope.loading = false;
            } catch (e) {
                loadTickets();
            }
            $window.localStorage.removeItem('tickets');
            $window.localStorage.removeItem('ticketsSearch');
        } else {
            loadTickets();
        }

    }

});


