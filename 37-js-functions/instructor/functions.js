// Basics

// Write a function that takes someone's order
// function takeOrder(name) {
//   return "Order for " + name + " was taken";
// }

var takeOrder = function(name) {
  return "Order for " + name + " was taken";
};

// Call the function
console.log(takeOrder); // "Order for Mina was taken"

var makeBurger = function() {
  return "Making a burger..."
}

var makePizza = function() {
  return "Making a pizza..."
}

function chef(orderFunction) {
  return orderFunction();
}

console.log( takeOrder("Mina") );
console.log( chef( takeOrder ) );
console.log( chef( makePizza ) );
console.log( chef( makeBurger ) );

// Questions:

// Can we assign a function to a variable?

// What happens if I reference the variable that contains the function?

// Can I call the function using normal function call syntax (with round brackets)?
