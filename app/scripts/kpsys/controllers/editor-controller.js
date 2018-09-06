'use strict';

angular.module('kpsysApp').controller('StaticPageController', function ($scope, $window, $state, $translate, EditorResource, InternationalizationConstants) {
    $scope.pageForm = {
        page: {}
    };

    $scope.language = {};
    $scope.failed = false;
    $scope.errorMessage = '';

    $scope.enums = {
        pageType: [
            {value: "0", name: "Home Page"},
            {value: "1", name: "Additional Page"},
            {value: "10", name: "Home Page After Login"}
        ],
        defaultPageType: undefined
    };

    $scope.init = function () {
        $scope.enums.defaultPageType = $scope.enums.pageType[0];
        $scope.languages = InternationalizationConstants.supportedLanguages.map(function (lang) {
            return {
                code: lang,
                name: InternationalizationConstants.languages[lang]
            };
        });
        var language = $window.localStorage.lang || $translate.use();
        $scope.language.selected = {name: InternationalizationConstants.languages[language], code: language};
    };

    $scope.saveStaticPage = function (page) {
        page.content = tinyMCE.activeEditor.getContent();
        page.language = $scope.language.selected.code;
        EditorResource.saveStaticPage.save(page).$promise.then(
            function () {
                $scope.failed = false;
                $scope.pageForm.page = {};
                $state.reload();
            },
            function (response) {
                $scope.failed = true;
                $scope.errorMessage = response.data.message;
            });
    };
});
