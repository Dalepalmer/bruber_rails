dalesBikeMania.factory('TicketsFactory', function TicketsFactory () {
  var factory = {}
  factory.tickets = [
    { address: '1234 Someplace Drive, Portland Oregon 97214', id: 11,
      status: 'Unclaimed', mechanic_id: 1, customer_id: 1, problem_notes: "What is a bike?",
      bicycle_id: 1, location_notes: "In the Garage", rating_value: 1, rating_text: "neu"
    }
  ];
  factory.addTicket = function() {
    factory.tickets.push({ address: factory.ticketAddress, id: factory.tickets.length + 1,
                           status: "unclaimed", mechanic_id: null, customer_id: 'current_user.id',
                           problem_notes: factory.ticketProblems, bicycle_id: null,
                           location_notes: factory.ticketLocation, rating_value: 0, rating_text: 'Neutral' });
  factory.ticketAddress = null;
  factory.ticketProblems = null;
  factory.ticketLocation = null;
  };

  return factory;
});
