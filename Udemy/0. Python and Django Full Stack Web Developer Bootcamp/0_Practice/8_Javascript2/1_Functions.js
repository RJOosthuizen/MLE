function hello(){
  console.log("Hello World!");
}

function helloYou(name){
  console.log("Hello " + name);
}

function addNum(num1, num2) {
  console.log(num1 + num2);
}

function helloSomeone(name="Frank") {
  console.log("Hello " + name);
}

function formal(name="Sam", title="Sir") {
  // console.log(title + " " + name);
  return title + " " + name; //return value
}

function timesFive(numInput) {
  var result = numInput * 5;
  //result scope is limited to function
  return result;
}

//global vs local scope
var v = "I'm global v"
var stuff = "I'm global stuff"

function fun(stuff){
    console.log(v);
    stuff = "Reassign stuff inside func";
    console.log(stuff);
}

// Now see what happens!
fun()
console.log(stuff);
