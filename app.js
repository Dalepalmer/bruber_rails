var dalesBikeMania = angular.module('dalesBikeMania', ['ui.router']);

dalesBikeMania.config(function($stateProvider) {
  $stateProvider.state('home', {
    url: "/",
    templateUrl: "partials/home.html"
  });

  $stateProvider.state('create_ticket', {
    url: "/user/new/ticket",
    templateUrl: "partials/create_ticket.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('user_sign_in', {
    url: "/sign_in",
    templateUrl: "partials/customer_login.html",
    controller: 'UserSignInCtrl'
  });

  $stateProvider.state('view_user_profile', {
    url: "/users/userid",
    templateUrl: "partials/user_profile_page.html",
    controller: 'UserProfileCtrl'
  });

  $stateProvider.state('view_ticket_history', {
    url: "/users/tickets",
    templateUrl: "partials/view_ticket_history.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('current_ticket', {
    url: "/users/tickets/current",
    templateUrl: "partials/current_ticket.html",
    controller: 'TicketsCtrl'
  });

});
