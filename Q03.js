var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"],
                   AB: ["Edmonton", "Calgary"]
};


var describe = function(object) {
  var result = "";
  for (var key in object) {
    var num = object[key].length;
    result += key + " has " + num + " main cities ";
  };
  console.log(result);
};

describe(majorCities);
