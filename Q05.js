var evenNum = function(n) {
  result = [];
  for (var i = 0; i < n; i++) {
    result.push(i * 2);
  };
  return result;
};


console.log(evenNum(4));
console.log(evenNum(7));
console.log(evenNum(10));
