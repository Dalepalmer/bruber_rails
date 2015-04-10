dalesBikeMania.factory('TicketsFactory', function TicketsFactory ($http) {
  var factory = {}

  factory.addTicket = function() {
    factory.tickets.push({ address: factory.ticketAddress, id: factory.tickets.length + 1,
                           status: "unclaimed", mechanic_id: null, customer_id: 'current_user.id',
                           problem_notes: factory.ticketProblems, bicycle_id: null,
                           location_notes: factory.ticketLocation, rating_value: 0, rating_text: 'Neutral',
                           });
  factory.ticketAddress = null;
  factory.ticketProblems = null;
  factory.ticketLocation = null;
  };

  return factory;
});
