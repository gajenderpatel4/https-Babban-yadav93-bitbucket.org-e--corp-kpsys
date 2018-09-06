'use strict';

angular.module('kpsysApp').service('TicketService', function (TicketResource, PaginationConstants, $q) {
    return {
        getTickets: function (filter) {
            var defer = $q.defer();
            TicketResource.findTickets.post(filter, function (result, headers) {
                var promiseResult = {
                    list: result,
                    count: headers(PaginationConstants.PAGINATION_COUNT),
                    limit: headers(PaginationConstants.PAGINATION_LIMIT),
                    start: headers(PaginationConstants.PAGINATION_START)
                };
                defer.resolve(promiseResult);
            });
            return defer.promise;
        },
        getTicket: function (ticketId) {
            var defer = $q.defer();
            TicketResource.tickets.get({ticketId: ticketId}, function (result) {
                console.log(result);
                defer.resolve(result);
            });
            return defer.promise;
        }

    };
});

app.constant('TICKET_FIELDS', [
    {key: "subtidno", title: "Fine No.", name: "subtidno"},
    {key: "b.busnstatnmbr", title: "Status", name: "subBusiness.business.busnstatnmbr"},
    {key: "b.extnbusnstatnmbr", title: "External Status", name: "subBusiness.business.extnbusnstatnmbr"},
    {key: "u.username", title: "User", name: "user.username"},
    {key: "b.clntstrsidno", title: "Reason", name: "subBusiness.business.clntstrsidno"},
    {key: "l.locationId", title: "Location ID", name: "location.locationId"},
    {key: "l.name", title: "Location", name: "location.name"},
    {key: "nmbrplte", title: "License Plate", name: "nmbrplte"},
    {key: "v.vltndscr", title: "Violation", name: "violation.vltndscr"},
    {key: "b.busnissutmst", title: "Issuing Date", name: "subBusiness.business.busnissutmst"},
    {key: "b.busndueedate", title: "Due Date", name: "subBusiness.business.busndueedate"},
    {key: "b.origcurramnt", title: "Amount", name: "subBusiness.business.origcurramnt"},
    {key: "c.ctryname", title: "Country", name: "country.ctryname"},

    {key: "vhclbrndname", title: "Vehicle Brand", name: "vhclbrndname"},
    {title: "Vehicle Type", name: "vehicleType.vhcltypename"},
    {title: "From time", name: "fromtmst"},
    {title: "Until time", name: "untltmst"},
    {title: "Payment ID", name: "paymidfc"},
    {title: "Checked out", name: "checkOutDate"},
    {title: "Checked in", name: "checkInDate"},
    {title: "Due date", name: "subBusiness.business.busndueedate"}
]);
