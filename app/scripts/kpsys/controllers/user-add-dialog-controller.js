'use strict';

angular.module('kpsysApp').controller('UserAddDialogController', function($scope, $location, $uibModalInstance, UsersResource, UsersService, UserTypesMappingConstants) {
    $scope.userType = $location.path().split("/")[2];
    $scope.externalLogin = Math.random().toString(16).slice(2);

    $scope.userForm = {
        user: {
            clientId: 24,
            userStatus: 'PENDING',
            userType: UserTypesMappingConstants.UserTypes[$scope.userType],
            locationIds: []
        }
    };

    $scope.enums = {
        userStatus: [
            {value: "ACTIVE", name: "Active"},
            {value: "PENDING", name: "Pending"},
            {value: "DISABLED", name: "Disabled"},
            {value: "DELETED", name: "Deleted"}
        ]
    };

    $scope.clearForm = function () {
        $scope.userForm.user = {};
    };

    $scope.saveUser = function (user) {
        if (user !== undefined) {
            $uibModalInstance.close();

            user.locationIds = [];
            angular.forEach(user.locations, function (location) {
                user.locationIds.push(location.locationId);
            });

            UsersResource.createUser.create(user).$promise.then(
                function () {
                    $scope.userForm.user = {};
                },
                function () {
                    console.log("Failed to save user");
                });
        }
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});
