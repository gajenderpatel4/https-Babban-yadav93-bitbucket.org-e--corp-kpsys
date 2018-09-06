'use strict';

angular.module('kpsysApp').service('LocationService', function (LocationResource) {
    var locations = [];
    var query = function () {
        LocationResource.query({}, function (result) {
            locations = result;
        });
    };
    this.list = function () {
        if (locations.length === 0) {
            query();
            return locations;
        } else {
            return locations;
        }
    };
    this.update = function () {
        query();
    };
});
