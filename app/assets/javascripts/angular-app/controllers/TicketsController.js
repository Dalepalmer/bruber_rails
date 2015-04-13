dalesBikeMania.controller('TicketsCtrl', function TicketsCtrl($rootScope, $scope, $stateParams, UsersFactory, TicketsFactory, UtilitiesFactory, $http, $location) {
  $scope.TicketsFactory = TicketsFactory;

  $scope.addTicket = function() {
    $http.post('/tickets', { customer_id: 2, bicycle_id: 1, problem_id: 1, repair_status: "Posted", location: $scope.ticketAddress, location_notes: $scope.ticketLocationNotes } ).
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
