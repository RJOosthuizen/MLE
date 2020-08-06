var firstName = prompt("Enter your first name.");
var lastName = prompt("Enter your last name.");
var age = prompt("Enter your age.");
var height = prompt("Enter your height.");
var petName = prompt("Enter your pet's name.");


if (firstName[0] == lastName[0]
  && (age > 20 && age < 30)
  && height >= 170
  && petName[petName.length - 1] == "y")
{
    alert("Welcome spy!.");
}
