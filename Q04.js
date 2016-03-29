var isPrime = function(n) {
  var bool = true;
  for (var i = 2; i < n; i++) {
    if (n % i === 0) {
      bool = false;
    };
  };
  console.log(bool);
};


isPrime(2);
isPrime(3);
isPrime(4);
