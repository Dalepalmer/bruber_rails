dalesBikeMania.controller('UserSignInCtrl', function UserSignInCtrl($scope, $stateParams, UsersFactory) {
  $scope.users = UsersFactory.users;
  $scope.UsersFactory = UsersFactory;
});
