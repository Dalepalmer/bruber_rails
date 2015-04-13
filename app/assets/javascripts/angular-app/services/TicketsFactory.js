dalesBikeMania.factory('TicketsFactory', function TicketsFactory($http, $resource) {
  var factory = {};

  return $resource('/tickets.json');

  return factory;

});
