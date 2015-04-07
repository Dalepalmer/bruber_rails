var dalesBikeMania = angular.module('dalesBikeMania',  ['ui.router']);

dalesBikeMania.config(function($stateProvider) {
  $stateProvider.state('tickets', {
    url: '',
    templateUrl: 'partials/tickets.html',
    controller: 'TicketsCtrl'
  });
});
