dalesBikeMania.factory('UsersFactory', function UsersFactory (UtilitiesFactory) {
  var factory = {}
  factory.users = [
    { user_name: 'Tyler', user_id: 1, user_email: 'hello@doge.com', password: 'ilovedoge', user_auth: false},
    { user_name: 'becky', user_id: 2, user_email: 'becky@doge.com', password: '1234', user_auth: false}
  ];
  return factory
});
