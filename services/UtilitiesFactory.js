dalesBikeMania.factory('UtilitiesFactory', function() {
  return {
    findById: function(collection, user_name, password) {
      for (var i = 0; i < collection.length; i++) {
        if ((collection[i].user_name == user_name) && (collection[i].password == password)) {
          return collection[i];
        }
      }
      return null;
    }
  };
});
