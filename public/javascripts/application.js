$(document).ready(function() {
  var showyaself = function() {

    var thing = "cheese";
    var thing1 = "applesauce";

    var showing = function(type) {
      return "this is a " + type + " Thing";
    };

    var coat = function(attribute) {
      return "there is a " + attribute;
    };
    return {showing: showing, coat: coat};
    }();

    console.log(showyaself.thing);
    console.log(showyaself.showing("house"));
})
