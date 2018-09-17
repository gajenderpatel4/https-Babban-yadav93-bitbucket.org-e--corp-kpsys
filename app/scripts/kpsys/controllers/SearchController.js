'use strict';

angular.module('kpsysApp').controller('SearchCtrl', function($scope, LicensePlatesService) {
    $scope.query = "";
    $scope.licensePlates = null;
    $scope.responseError = "";
    $scope.submit = function() {
        $scope.licensePlates = null;
        $scope.responseError = "";
        if ($scope.query.length > 0) {
            var val = $scope.query;
            $scope.submittedQuery = val;
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
