void main(List<String> args) {
  ///The important point in this example was that we define our Named Arguments in the same way and order,
  ///it is not necessarily mandatory to get the parameters exactly as we defined them in the function
  ///in the part where we call the desired function and Let's quantify.
  ///
  describePerson(); //Hello null, you are null years old
  describePerson(age: null); //Hello null, you are null years old
  describePerson(name: null); //Hello null, you are null years old
  describePerson(age: null, name: null); //Hello null, you are null years old
  describePerson(name: null, age: null); //Hello null, you are null years old
  describePerson(
      age: null, name: "Peyman"); //Hello Peyman, you are null years old
  describePerson(age: 20, name: null); //Hello null, you are 20 years old
  describePerson(age: 20, name: null); //Hello null, you are 20 years old
  describePerson(age: 20, name: "Fardin"); //Hello Fardin, you are 20 years old
  describePerson(name: "Fardin", age: 20); //Hello Fardin, you are 20 years old
}

void describePerson({
  String? name,
  int? age,
}) {
  print("Hello $name, you are $age years old");
}

//or
void describePerson1({
  String? name = "John",
  int? age = 20,
}) {
  print("Hello $name, you are $age years old");
}
