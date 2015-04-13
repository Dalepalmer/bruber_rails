dalesBikeMania.factory('MechanicsFactory', function MechanicsFactory($http, $resource) {
  var factory = {};

  return $resource('/mechanics.json');

  return factory;

});
