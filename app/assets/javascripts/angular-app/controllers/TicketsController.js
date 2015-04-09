dalesBikeMania.controller('TicketsCtrl', function TicketsCtrl($scope, $stateParams, TicketsFactory) {
  $scope.tickets = TicketsFactory.tickets;
  $scope.TicketsFactory = TicketsFactory;

  $scope.problemOptions = [
    { label: 'Chain', value: 1 },
    { label: 'Tire', value: 2 },
    { label: 'Brakes', value: 3 }
  ];
});
