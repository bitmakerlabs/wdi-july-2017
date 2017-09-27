// Callbacks

var makeBurger = function() {
  return "Making a burger..."
}

var makePizza = function() {
  console.log("Making a pizza...")
}

console.log("Starting to make the pizza...");
setTimeout( makePizza, 5000 );
console.log("After the pizza was ordered");

var numbers = [1, 2, 3, 4, 5];

var multiplyByFive = function(currentValue, index, array) {
  return currentValue * 5;
}

var byFive = numbers.map( multiplyByFive );

console.log(byFive);
