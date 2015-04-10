dalesBikeMania.controller('TicketsCtrl', function TicketsCtrl($scope, $stateParams, TicketsFactory) {
  $scope.tickets = TicketsFactory.tickets;
  $scope.TicketsFactory = TicketsFactory;

  $scope.addTicket = function() {
    $http.post('/tickets', {customer_id: 1, repair_status: $scope.ticketAddress}).
    success(function(data, status, headers, config) {
      // this callback will be called asynchronously
      // when the response is available
    }).
    error(function(data, status, headers, config) {
      // called asynchronously if an error occurs
      // or server returns response with an error status.
    });
  };

});
