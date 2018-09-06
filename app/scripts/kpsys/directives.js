"use strict";
var kpsysApp = angular.module('kpsysApp');

// Handle Dropdown Hover Plugin Integration
kpsysApp.directive('dropdownMenuHover', function () {
    return {
        link: function (scope, elem) {
            elem.dropdownHover();
        }
    };
});

app.directive('ticketField', ['$compile', '$filter', function ($compile, $filter) {
    return {
        restrict: 'E',
        replace: 'true',
        scope: {
            name: '@'
        },
        link: function (scope, element, attrs) {
            scope.$watch(
                function (scope) {
                    return {
                        name: attrs.name,
                        apply: attrs.apply,
                        title: attrs.title,
                        format: attrs.format
                    };
                },
                function (field) {
                    var fieldValue = scope.$parent.$eval('ticket.' + field.name);
                    var fieldTitle = field.title ? field.title : scope.$parent.getFieldTitle(field.name);
                    var br = '';
                    if (field.apply) {
                        fieldValue = scope.$parent.$eval(field.apply + '(ticket)');
                        fieldTitle = field.title;
                    } else if (field.format) {
                        var format = field.format ? field.format : 'yyyy-MM-dd';
                        fieldValue = $filter('date')(fieldValue, format);
                    }
                    if (angular.isDefined(attrs.br)) {
                        br = '<br/>;'
                    }
                    element.html('<div><span>' + fieldTitle + '</span>' + br + '<span>' + fieldValue + '</span></div>');
                    $compile(element.contents())(scope);

                }
            );
        }
    };
}]);
