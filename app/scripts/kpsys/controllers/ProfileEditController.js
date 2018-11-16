'use strict';

angular.module('kpsysApp').controller('ProfileEditCtrl', function ($scope, $rootScope, UsersService) {

    $scope.isArray = angular.isArray;

    $scope.init = function () {
        $scope.profileLoading = true;

        UsersService.getCurrentUser()
            .then(function (resp) {
                $scope.profile = resp.entity;
                $scope.profileLoading = false;
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.profileLoading = false;
            });
    };

    $scope.updateProfile = function () {
        if ($scope.updateProfileInProcess) {
            return;
        }

        $scope.updateProfileInProcess = true;
        $scope.responseError = false;
        $scope.profileSavedOk = false;

        var p = {
            login: $scope.profile.login,
            address: $scope.profile.address,
            city: $scope.profile.city,
            country: $scope.profile.country,
            email: $scope.profile.email,
            postOfficeId: $scope.profile.postOfficeId,
            phone: $scope.profile.phone
        };

        UsersService.update(p)
            .then(function (_) {
                $scope.updateProfileInProcess = false;
                $scope.profileSavedOk = true;
                $scope.statusMessage = "Profile updated.";
            }, function (ex) {
                $scope.responseError = $rootScope.getErrorMessage(ex);
                $scope.updateProfileInProcess = false;
            });
    };

    $scope.isLoading = function () {
        return $scope.profileLoading || $scope.updateProfileInProcess;
    };
});
