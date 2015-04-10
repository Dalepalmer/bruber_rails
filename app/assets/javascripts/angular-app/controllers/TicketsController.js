dalesBikeMania.controller('TicketsCtrl', function TicketsCtrl($rootScope, $scope, $stateParams, TicketsFactory, $http, $location) {
  $scope.tickets = []
  $scope.TicketsFactory = TicketsFactory;
  $scope.tickets = []

  $http.get('/tickets.json').
  success(function(data, status, headers, config) {
    $scope.tickets = data;
    // when the response is available
  }).
  error(function(data, status, headers, config) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });

  $http.get('/mechanics.json').
  success(function(data, status, headers, config) {
    $scope.users = data;
    // when the response is available
  }).
  error(function(data, status, headers, config) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });

  $http.get('/tickets.json').
  success(function(data, status, headers, config) {
    $scope.tickets = data;
    console.log("Success!")
    // when the response is available
  }).
  error(function(data, status, headers, config) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });

  $scope.addTicket = function() {
    $http.post('/tickets/:ticket_id.json', { customer_id: 2, bicycle_id: 1, problem_id: 1, repair_status: "Posted"} ).
    success(function(data, status, headers, config) {
      // this callback will be called asynchronously
      // when the response is available
      console.log('Posted!')
      $location.path("mechanic_tickets");
    }).
    error(function(data, status, headers, config) {
      // called asynchronously if an error occurs
      // or server returns response with an error status.
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
