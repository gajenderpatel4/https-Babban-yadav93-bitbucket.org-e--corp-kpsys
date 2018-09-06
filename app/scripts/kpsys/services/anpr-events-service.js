'use strict';

angular.module('kpsysApp').service('AnprEventsService', function ($q, AnprEventsResource) {
    this.list = function (deviceId) {
        var defer = $q.defer();
        AnprEventsResource.events.get({deviceId: deviceId}, function (result) {
            var promiseResult = {
                list: result
            };
            defer.resolve(promiseResult);
        });
        return defer.promise;
    };
});
