// document.URL // get page url
// document.body // get page body
// document.head // get page head
// document.links // get all a tags
//
// document.getElementById("pm") // get element with the id
// document.getElementsByClassName("myul") // get elements with that class name
// document.getElementsByTagName("li") // get alle elements with that html tags
//
// document.querySelector("#pm") //get element like css
// document.querySelector(".myul") //get element like css (get first)
//
// document.querySelectorAll(".myul") //get all elements
//
//
// var myheader = document.querySelector("h1") // get element and store in var
// myheader.style.color = 'red' //change the grabbed element property by chaning the var


var header = document.querySelector("h1")

header.style.color = 'red'


// Random Color Function:
// http://stackoverflow.com/questions/1484506/random-color-generator-in-javascript
function getRandomColor(){
  var letters = "0123456789ABCDEF";
  var color = '#';
  for (var i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random()*16)];
  }
  return color
}

// Simple function for clarity
function changeHeaderColor(){
  colorInput = getRandomColor()
  header.style.color = colorInput;
}

// Now perform the action over intervals (milliseocnds):
setInterval("changeHeaderColor()",500);
