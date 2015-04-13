dalesBikeMania.factory('BicyclesFactory', function BicyclesFactory($http, $resource) {
  var factory = {};

  return $resource('/bicycles.json');

  return factory;

});
