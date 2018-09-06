'use strict';

angular.module('kpsysApp').factory('ClientResource', function ($resource) {
    return $resource('/api/dashboard/clients', {}, {});
});
