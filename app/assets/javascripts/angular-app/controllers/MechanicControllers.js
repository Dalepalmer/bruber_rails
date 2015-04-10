dalesBikeMania.controller('MechanicsCtrl', function MechanicsCtrl($scope, $rootScope, $stateParams, $location, UsersFactory, UtilitiesFactory, $http) {
  $scope.UtilitiesFactory = UtilitiesFactory
  $scope.users = []


  $http.get('/mechanics.json').
  success(function(data, status, headers, config) {
    $scope.users = data;
    // when the response is available
  }).
  error(function(data, status, headers, config) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });

});
