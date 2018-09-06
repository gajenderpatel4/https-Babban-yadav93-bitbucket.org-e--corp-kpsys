'use strict';

angular.module('kpsysApp').factory('TicketResource', function ($resource, PaginationConstants) {
    return {
        findTickets: $resource('/api/dashboard/tickets', {}, {
            post: {
                method: 'POST', isArray: true, transformResponse: function (data, headers) {
                    var jsonData = JSON.parse(data);
                    headers()[PaginationConstants.PAGINATION_COUNT] = jsonData.count;
                    headers()[PaginationConstants.PAGINATION_START] = jsonData.start;
                    headers()[PaginationConstants.PAGINATION_LIMIT] = jsonData.limit;
                    return jsonData.list;
                }
            }
        }),
        tickets: $resource('/api/dashboard/tickets/:ticketId', {ticketId: '@ticketId'}, {
            get: {
                method: 'GET', isArray: false, transformResponse: function (data) {
                    return JSON.parse(data);
                }
            }
        })
    };
});
