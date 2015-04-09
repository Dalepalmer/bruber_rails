dalesBikeMania.controller('UsersCtrl', function UsersCtrl($scope, $rootScope, $stateParams, $location, UsersFactory, UtilitiesFactory, $http) {
  $scope.UtilitiesFactory = UtilitiesFactory
  $scope.users = [];

  $http.get('/customers.json').
  success(function(data, status, headers, config) {
    $scope.users = data;
    // when the response is available
  }).
  error(function(data, status, headers, config) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });

  $scope.signIn = function() {
    $rootScope.current_user = UtilitiesFactory.findById($scope.users, $scope.userName, $scope.uId);
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
