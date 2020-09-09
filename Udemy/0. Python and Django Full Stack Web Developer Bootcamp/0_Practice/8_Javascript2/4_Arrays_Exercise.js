// PART 4 ARRAY EXERCISE
// This is  a .js file with commented hints, its optional to use this.

// Create Empty Student Roster Array
// This has been done for you!
var roster = []

// Create the functions for the tasks

// ADD A NEW STUDENT
function addStudent() {
  nameToAdd = prompt("add student name.");
  roster.push(nameToAdd);
}
// Create a function called addNew that takes in a name
// and uses .push to add a new student to the array


// REMOVE STUDENT
function removeStudent() {
  var nameToRemove = prompt("remove student name.");
  var index = roster.indexOf(nameToRemove);
  if (index > -1) {
    roster.splice(index, 1);
  }
}
// Create a function called remove that takes in a name
// Finds its index location, then removes that name from the roster

// HINT: http://stackoverflow.com/questions/5767325/how-to-remove-a-particular-element-from-an-array-in-javascript
//

// DISPLAY ROSTER
function displayStudents() {
  // return roster.forEach(console.log);
  console.log(roster);
}
// Create a function called display that prints out the orster to the console.


// Start by asking if they want to use the web app
var startup = prompt("start the roster?(y/n)");

// Now create a while loop that keeps asking for an action (add,remove, display or quit)
// Use if and else if statements to execute the correct function for each command.

while (startup == "y") {
  var userAction = prompt("add,remove, display or quit.");

  if (userAction == "add") {
    addStudent();
  }

  if (userAction == "remove") {
    removeStudent();
  }

  if (userAction == "display") {
    displayStudents();
  }

  if (userAction == "quit") {
    alert("exiting.");
    startup = "no";
  }
}