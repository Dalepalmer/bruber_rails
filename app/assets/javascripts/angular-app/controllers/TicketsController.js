dalesBikeMania.controller('TicketsCtrl', function TicketsCtrl($rootScope, $scope, $stateParams, UsersFactory, TicketsFactory, ProblemsFactory, UtilitiesFactory, BicyclesFactory, $http, $location) {
  $scope.TicketsFactory = TicketsFactory;

  ProblemsFactory.query(function(data) {
    $scope.problems = data;
    console.log("Got All Problems")
  });

  BicyclesFactory.query(function(data) {
    $scope.bicycles = data;
    console.log("Got All Bicycles")
  });

  $scope.addTicket = function() {
    $http.post('/tickets', { customer_id: 2, bicycle_id: $scope.userBike, problem_id: $scope.ticketProblem, repair_status: "Posted", location: $scope.ticketAddress, location_notes: $scope.ticketLocationNotes } ).
    success(function(data, status, headers, config) {
      console.log(data)
      $location.path("mechanic_tickets");
    }).
    error(function(data, status, headers, config) {
    });
  };

  $scope.claimTicket = function(ticket) {
    $http.patch('/tickets/' + ticket.id + '.json', {repair_status: "Claimed", mechanic_id: 3}).
    success(function(data, status, headers, config) {
      location.reload();
    }).
    error(function(data, status, headers, config) {

    });
  };

  $scope.closeTicket = function(ticket) {
    $http.patch('/tickets/' + ticket.id + '.json', {repair_status: "Closed"}).
    success(function(data, status, headers, config) {
      location.reload();
    }).
    error(function(data, status, headers, config) {

    });
  };
});
