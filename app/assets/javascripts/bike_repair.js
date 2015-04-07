
/**
 * @ngdoc overview
 * @name bikeRepair
 * @description
 * # bikeRepair
 *
 * Main module of the application.
 */

angular
  .module('bikeRepair', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ng-token-auth'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/sign_in', {
        templateUrl: 'views/user_sessions/new.html',
        controller: 'UserSessionCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
