dalesBikeMania.controller('TicketsCtrl', function TicketsCtrl($scope, $stateParams, TicketsFactory) {
  $scope.tickets = TicketsFactory.tickets;
  $scope.TicketsFactory = TicketsFactory;
});
