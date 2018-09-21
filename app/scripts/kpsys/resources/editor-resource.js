'use strict';

angular.module('kpsysApp').factory('EditorResource', function ($resource) {
    return {
        saveStaticPage : $resource('/api/editor', {}, {
            save : {
                method:'POST', data: { page: {} }
            }
        })
    };
});
