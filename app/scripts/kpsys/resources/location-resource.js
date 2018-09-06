'use strict';

angular.module('kpsysApp').factory('LocationResource', function ($resource) {
    return $resource('/api/dashboard/locations', {}, {});
});
