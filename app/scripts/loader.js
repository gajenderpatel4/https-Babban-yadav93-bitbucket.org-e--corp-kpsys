var commonScripts = [
    'auth.js',
    'i18n.js',
    'directives.js',
    'constants/pagination-constants.js',
    'constants/internationalization-constants.js',
    'constants/client-constants.js'
];
var applications = {
    kpsys: {
        host: 'localhost:8087',
        load: function (application) {
            addScripts(['app.js'], application, function () {
                addScripts(commonScripts, 'common', function () {
                    addScripts([
                        'resources/client-resource.js',
                        'services/client-service.js',
                        'controllers/auth.js',
                        'resources/user-resource.js',
                        'services/user-service.js',
                        'directives.js'
                    ].reverse(), application, function () {
                        angular.bootstrap(document, [application + 'App']);
                    })
                })
            })
        }
    },
    owner: {
        host: 'localhost:8088',
        load: function (application) {
            addScripts(['app.js'], application, function () {
                addScripts(commonScripts, 'common', function () {
                    addScripts([
                        'controllers/auth.js',
                        'controllers/register.js',
                        'controllers/home.js',
                        'controllers/resetPassword.js',
                        'services/register.js',
                        'services/resetPassword.js'
                    ], application, function () {
                        angular.bootstrap(document, [application + 'App']);
                    })
                })
            })
        }
    }
};

var application = null;

angular.forEach(applications, function (value, key) {
    var hostPort = window.location.host + ':' + window.location.port;
    if (hostPort.indexOf(value.host) >= 0) {
        application = key;
    }
});

function addScript(src, callback) {
    var s = document.createElement('script');
    s.setAttribute('src', src);
    s.setAttribute('type', 'text/javascript');
    s.onload = callback;
    document.body.appendChild(s);
}

function addScripts(scripts, app, callback) {
    var script = scripts.pop();
    if (script !== undefined) {
        var scriptPath = script;
        if (app !== undefined) {
            scriptPath = 'scripts/' + app + '/' + script;
        }
        addScript(scriptPath, function () {
            addScripts(scripts, app, callback);
        });
    } else {
        callback();
    }
}

angular.element(document).ready(function () {
    applications[application].load(application);
});


