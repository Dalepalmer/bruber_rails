dalesBikeMania.factory('ProblemsFactory', function ProblemsFactory($http, $resource) {
  var factory = {};

  return $resource('/problems.json');

  return factory;

});
