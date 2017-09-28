"use strict";


// Numbers
var num = 5;
var apples = 34.5;



// Strings
var message = "Hello!";
var hello = "Her name's Sally";
console.log(hello);


// Booleans (True and False)
var didWork = true;
var myNameIsDaniel = true;



// undefined
var newVariable;
console.log(newVariable);



// null
var noValue = null;


// Arrays
var fruits = ['apples', 'oranges', 'pears'];
console.log(typeof fruits);



// Object Literals
var person = {
  'name': 'Guy',
  "height": "5'4",
  'key': 'value',
};

// person['friends']['nearby']['name']
console.log(person['name']);
console.log(person.name);

var key = 'name';
console.log(person[key]);
console.log(person.key);









// For Loop
// 0 1 2 3 4 5
// 10 8 6 4 2
for (var index = 0; index < 6; index++) {
  console.log('looping ' + index);
}

for (var i = 10; i > 1; i -= 2) {
  console.log(i);
}

var things = ['pants', 'parachutes', 'top hats', 'boots'];
var feelings = ['happy', 'sad', 'enraged', 'guilty'];
// console.log(things.concat(feelings));
for (var counter = 0; counter < things.length; counter++) {
  var together = things[counter] + ': ' + feelings[counter];
  console.log(together);
  // console.log(things[counter]);
}



// While Loop
var counter = 5;
while (counter < 20) {
  console.log('hello');
  counter++;
}



// If Statement
if (5 > 3) {
  console.log("Number is bigger!");
} else if (8 > 3) {
  console.log("Second number is bigger");
} else {
  console.log("Numbers were smaller.");
}

// Named function
function doStuff() {
  console.log("Doing stuff");
  return 5;
}
var value = doStuff();
console.log(value);

function buildHouse() {
  if (true) {
    return 7;
  }
  console.log("won't run");
}

var value = buildHouse();
console.log(value);






// Functions with parameters



// Anonymous function

var breatheFire = function() {
  console.log('breathing fire');
}
breatheFire();

// Callback



// Scope examples -------------------

var test = 5;
test += 3;
function doMore() {
  var newVar = 10;
}
doMore();


function print(thing) {
  console.log(thing);
  return thing;
}
print('item', 'item2');


var name = 'Betty';
function sayHello() {
  function getMessage() {
    var message = 'Hello, ' + name + '!';
    return message;
  }

  console.log(getMessage());
  return true;
}
sayHello();





// Callbacks --------------------------





// forEach callback
var animals = ['cat', 'dog', 'parrot'];
var printAnimal = function(animal) {
  console.log(animal);
}
animals.forEach(printAnimal);


// objects - accessing attributes




// objects with functions - basic example




// objects with functions - basic Mars Rover implementation



// More complicated callbacks --------------------------

function buildBurger(addBread, addToppings) {
  addBread();
  addToppings();
  addBread();
}

function wholeWheatBun() {
  console.log('WWWWWWWWW');
}

function pickles() {
  console.log('////////////');
}

function pattyWithTomatoes() {
  console.log('||||');
  console.log('============');
}

buildBurger(wholeWheatBun, pickles);
console.log();
console.log();
buildBurger(wholeWheatBun, pattyWithTomatoes);


// asynchronous JS
