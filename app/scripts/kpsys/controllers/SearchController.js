'use strict';

angular.module('kpsysApp').controller('SearchCtrl', function($scope, LicensePlatesService) {
    $scope.query = {value: ""};
    $scope.licensePlates = null;
    $scope.responseError = "";
    $scope.submit = function() {
        $scope.licensePlates = [];
        $scope.responseError = "";
        if ($scope.query.value.length > 0) {
            var val = $scope.query.value;
            LicensePlatesService.query(val)
                .then(function (response) {
                    $scope.licensePlates = response.items;
                }, function (ex) {
                    console.log(ex);
                    $scope.responseError = ex.data.error.message;
                 });
        }
    }
});
