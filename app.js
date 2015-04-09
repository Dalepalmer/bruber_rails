var dalesBikeMania = angular.module('dalesBikeMania', ['ui.router']);

dalesBikeMania.config(function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise("/");

  $stateProvider.state('home', {
    url: "/",
    templateUrl: "partials/home.html",
    controller:'HomeCtrl'
  });

  $stateProvider.state('about_us', {
    url: "/about",
    templateUrl: "partials/about_us.html",
    controller: 'HomeCtrl'
  });

  $stateProvider.state('contact_us', {
    url: "/contact",
    templateUrl: "partials/contact_info.html",
    controller: 'HomeCtrl'
  });

  $stateProvider.state('create_user', {
    url: "/user/new/",
    templateUrl: "partials/create_new_user.html",
    controller: 'CreateUserCtrl'
  });

  $stateProvider.state('user_sign_in', {
    url: "/sign_in",
    templateUrl: "partials/customer_login.html",
    controller: 'UsersCtrl'
  });

  $stateProvider.state('view_user_profile', {
    url: "/users/userid",
    templateUrl: "partials/user_profile_page.html",
    controller: 'UserProfileCtrl'
  });

  $stateProvider.state('create_ticket', {
    url: "/user/new/ticket",
    templateUrl: "partials/create_ticket.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('current_ticket', {
    url: "/users/tickets/current",
    templateUrl: "partials/current_ticket.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('view_ticket_history', {
    url: "/users/tickets",
    templateUrl: "partials/view_ticket_history.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('create_mechanic', {
    url: "/mechanic/new",
    templateUrl: "partials/create_mechanic.html",
    controller: 'NewMechanicCtrl'
  });

});
