dalesBikeMania.controller('UsersCtrl', function UsersCtrl($rootScope, $scope, $stateParams, UsersFactory, UtilitiesFactory, $http, $location) {
  $scope.UtilitiesFactory = UtilitiesFactory

  UsersFactory.query(function(data) {
    $scope.users = data;
    console.log("Got All Users")
  });

  $scope.signIn = function() {
    $rootScope.current_user = UtilitiesFactory.jankyLogin($scope.users, $scope.userName, $scope.uId);
    if ($rootScope.current_user == null ) {
      event.preventDefault();
      alert("User Not Found!")
    } else {
      $rootScope.current_user.user_auth = true;
      $location.path("/users/userid");
    }
    $scope.userName = null;
    $scope.uId = null;
  };
});
