'use strict';

angular.module('kpsysApp').controller('UserController', function($scope, $location, $uibModal, $log, ClientService, LocationService, UsersService, UserTypesMappingConstants) {

    // paging
    $scope.pagination = {
        currentPage: 1,
        pageSize: 8,
        count: 0,
        orderType: 'DESC',
        orderBy: 'userId'
    };

    $scope.filter = UserTypesMappingConstants.UserTypes.users;

    // users
    $scope.users = [];
    $scope.searchQuery = '';

    // user-add-dialog
    $scope.clients = undefined;
    $scope.locations = undefined;

    $scope.init = function() {
        // table
        getFilteredUsers();
        // user-add-dialog
        $scope.clients = ClientService.list();
        $scope.locations = LocationService.list();
    };

    $scope.search = function() {
        getFilteredUsers();
    };

    $scope.pageChanged = function() {
        getFilteredUsers();
    };

    $scope.openAddUserDialog = function () {
        var modalInstance = $uibModal.open({
            templateUrl: 'user-add-dialog-content.html',
            controller: 'UserAddDialogController',
            scope: $scope
        });
        modalInstance.result.then(
            function () {
                getFilteredUsers();
            },
            function () {
                $log.info('User add dialog dismissed');
            });
    };

    $scope.openViewUserDialog = function (user) {
        var modalInstance = $uibModal.open({
            templateUrl: 'user-view-dialog-content.html',
            controller: 'UserViewDialogController',
            resolve: {
                item: function () {
                    return user;
                }
            }
        });
        modalInstance.result.then(
            function () {
            },
            function () {
                $log.info('User view dialog dismissed');
        });
    };

    function getFilteredUsers() {
        updateFilter();
        UsersService.getUsersFiltered({
            start: ($scope.pagination.currentPage - 1) * $scope.pagination.pageSize,
            limit: $scope.pagination.pageSize,
            orderType: $scope.pagination.orderType,
            orderBy: $scope.pagination.orderBy,
            userType: $scope.filter,
            searchQuery: $scope.searchQuery
        }).then(function (response) {
            $scope.users = response;
        });
    }

    function updateFilter() {
        // TODO replace with $routeParams
        var filterKey = $location.path().split("/")[2];
        $scope.filter = UserTypesMappingConstants.UserTypes[filterKey] || 'NORMAL';
    }

});
