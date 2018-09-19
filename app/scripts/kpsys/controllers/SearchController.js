'use strict';

angular.module('kpsysApp').controller('SearchCtrl', function($scope, LicensePlatesService) {
    $scope.query = "";
    $scope.responseError = "";
    var locked = false;
    $scope.submit = function() {
        if (locked || $scope.query.length == 0) {
            return;
        }
        locked = true;
        $scope.loading = true;
        $scope.responseError = "";

        var val = $scope.query;
        LicensePlatesService.query(val)
            .then(function (response) {
                $scope.submittedQuery = val;
                $scope.licensePlates = response.items;
                locked = false;
                $scope.loading = false;
            }, function (ex) {
                console.log(ex);
                $scope.submittedQuery = val;
                $scope.responseError = ex.data.error.message;
                locked = false;
                $scope.loading = false;
             });
    };

    $scope.pay = function(index) {
        if (index >= 0 && index < $scope.licensePlates.length) {
            var licensePlate = $scope.licensePlates[index];
            //TODO:
        }
    };
});
