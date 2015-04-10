var dalesBikeMania = angular.module('dalesBikeMania', ['ui.router', 'templates']);

dalesBikeMania.config(function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise("/");

  $stateProvider.state('home', {
    url: "/",
    templateUrl: "home.html",
    controller:'HomeCtrl'
  });

  $stateProvider.state('about_us', {
    url: "/about",
    templateUrl: "about_us.html",
    controller: 'HomeCtrl'
  });

  $stateProvider.state('contact_us', {
    url: "/contact",
    templateUrl: "contact_info.html",
    controller: 'HomeCtrl'
  });

  $stateProvider.state('create_user', {
    url: "/user/new/",
    templateUrl: "create_new_user.html",
    controller: 'CreateUserCtrl'
  });

  $stateProvider.state('user_sign_in', {
    url: "/sign_in",
    templateUrl: "customer_login.html",
    controller: 'UsersCtrl'
  });

  $stateProvider.state('view_user_profile', {
    url: "/users/userid",
    templateUrl: "user_profile_page.html",
    controller: 'UsersCtrl'
  });

  $stateProvider.state('create_ticket', {
    url: "/user/new/ticket",
    templateUrl: "create_ticket.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('current_ticket', {
    url: "/users/tickets/current",
    templateUrl: "current_ticket.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('current_tickets', {
    url: "/users/tickets/tickets",
    templateUrl: "current_tickets.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('view_ticket_history', {
    url: "/users/tickets",
    templateUrl: "view_ticket_history.html",
    controller: 'TicketsCtrl'
  });

  $stateProvider.state('create_mechanic', {
    url: "/mechanic/new",
    templateUrl: "create_mechanic.html",
    controller: 'MechanicsCtrl'
  });

  $stateProvider.state('mechanic_sign_in', {
    url: "/mechanic_sign_in",
    templateUrl: "mechanic_login.html",
    controller: 'MechanicsCtrl'
  });

  $stateProvider.state('mechanic_tickets', {
    url: "/mechanic_tickets",
    templateUrl: "mechanic_tickets.html",
    controller: 'MechanicsCtrl'
  });

});
