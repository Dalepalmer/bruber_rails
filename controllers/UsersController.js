dalesBikeMania.controller('UsersCtrl', function UsersCtrl($scope, $rootScope, $stateParams, $location, TicketsFactory, UsersFactory, UtilitiesFactory) {
  $scope.users = UsersFactory.users;
  $scope.UsersFactory = UsersFactory;

  $scope.signIn = function() {
    $rootScope.current_user = UtilitiesFactory.findById(UsersFactory.users, $scope.userName, $scope.passWord);
    if ($rootScope.current_user == null ) {
      event.preventDefault();
      alert("User Not Found!")
    } else {
      $rootScope.current_user.user_auth = true;
      $location.path("/users/userid");
    }
    $scope.userName = null;
    $scope.passWord = null;
  };
});
