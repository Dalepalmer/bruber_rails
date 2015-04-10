dalesBikeMania.factory('UtilitiesFactory', function() {
  return {
    findById: function(collection, user_name, uid) {
      for (var i = 0; i < collection.length; i++) {
        if ((collection[i].name == user_name) && (collection[i].uid == uid)) {
          return collection[i];
        }
      }
      return null;
    }
  };
});
