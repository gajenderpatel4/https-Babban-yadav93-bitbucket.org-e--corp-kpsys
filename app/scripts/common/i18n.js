app.factory("$translateStaticFilesLoader", ["$q", "$http", function (a, b) {
    return function (c) {
        if (!c || !angular.isString(c.prefix) || !angular.isString(c.suffix)) {
            throw new Error("Couldn't load static files, no prefix or suffix specified!");
        }
        var d = a.defer();
        return b({
            url: [c.prefix, c.key, c.suffix].join(""),
            method: "GET",
            params: ""
        }).success(function (a) {
            d.resolve(a);
        }).error(function () {
            d.reject(c.key);
        }), d.promise;
    };
}]);

app.config(function ($translateProvider, $windowProvider, InternationalizationConstants) {
    var language = '';
    var $window = $windowProvider.$get();
    var browserLanguage = $window.localStorage.lang || $window.navigator.language;
    var isSupported = InternationalizationConstants.supportedLanguages.includes(browserLanguage);

    if (isSupported) {
        language = browserLanguage;
    } else {
        language = InternationalizationConstants.defaultLanguage;
    }

    $translateProvider.useSanitizeValueStrategy('sanitize');
    $translateProvider.preferredLanguage(language);
    $translateProvider.fallbackLanguage(InternationalizationConstants.defaultLanguage);

    $translateProvider.useStaticFilesLoader({
        prefix: 'static/messages-',
        suffix: '.json'
    });
});
