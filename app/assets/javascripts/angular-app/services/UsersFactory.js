dalesBikeMania.factory('UsersFactory', function UsersFactory($http, $resource) {
  var factory = {};

  return $resource('/customers.json');

  return factory;

});
