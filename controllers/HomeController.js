dalesBikeMania.controller('HomeCtrl', function HomeCtrl($scope, $rootScope, $stateParams, TicketsFactory, UsersFactory, UtilitiesFactory) {
  $scope.signOut = function() {
    $rootScope.current_user = null;
    $location.path("/")
  };
});
