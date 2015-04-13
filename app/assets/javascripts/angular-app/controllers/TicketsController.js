dalesBikeMania.controller('TicketsCtrl', function TicketsCtrl($rootScope, $scope, $stateParams, UsersFactory, UtilitiesFactory, $http, $location) {

  $scope.addTicket = function() {
    $http.post('/tickets/', { customer_id: 2, bicycle_id: 1, problem_id: 1, repair_status: "Posted"} ).
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
