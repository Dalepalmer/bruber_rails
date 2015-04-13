dalesBikeMania.controller('HomeCtrl', function HomeCtrl($rootScope, $scope, $stateParams, UsersFactory, MechanicsFactory, TicketsFactory, $http, $resource) {

  UsersFactory.query(function(data) {
    $scope.users = data;
  });

  MechanicsFactory.query(function(data) {
    $scope.mechanics = data;
  });

  TicketsFactory.query(function(data) {
    $scope.tickets = data;
  });

  $scope.popUp = function(thing) {
    alert("You have clicked on " + thing.id);
  }

});
