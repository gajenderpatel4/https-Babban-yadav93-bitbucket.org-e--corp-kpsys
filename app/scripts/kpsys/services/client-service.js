'use strict';

angular.module('kpsysApp').service('ClientService', function (ClientResource) {
    var clients = [];
    this.list = function () {
        if (clients.length === 0) {
            ClientResource.query({}, function (result) {
                clients = result;
            });
            return clients;
        } else {
            return clients;
        }
    };
});
