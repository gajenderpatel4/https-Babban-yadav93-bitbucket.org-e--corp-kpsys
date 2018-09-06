'use strict';

angular.module('kpsysApp').controller('UserViewDialogController', function($scope, $uibModalInstance, item, UserLocationService) {
    $scope.user = item;

    UserLocationService.query({
        userId: item.userId
    }).then(function (locations) {
        $scope.user.locations = locations.list;
    });

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});
