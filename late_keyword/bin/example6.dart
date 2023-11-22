void main(List<String> args) {
  final person = Person();
  try {
    //avoid doing this in real code since it's against the
    //the recommendations. instead use nullable values
    print(person.fullName);
  } //
  catch (error) {
    print(error);
  }
//----------------------------------------------------------------
  //valid code here
  person.firstName = "peyman";
  person.lastName = "poyan";
  print(person.fullName);
//----------------------------------------------------------------
  ///the best practice

  final person1 = Person1(firstName: "Foo", lastName: "Bar");
  print(person1.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = "$firstName $lastName";

  //valid code,But we decided to use late keyword
  /* final String firstName;
  final String lastName;
  Person({required this.firstName, required this.lastName}); */
}

///Here, when we come, we use late keyword variables. And then, in our main function, we put an expression that is susceptible to an exception into try,
///and then we wait for an exception to be received (catch terms).
///In fact, this The coding style is against Dart's recommendations and instructions,
///and I should avoid writing this type of code as much as possible,
///especially on late variables here (in fact, as a developer,
///I signed a contract with the Dart compiler, which I am currently using as a variable from There is a late type,
///I don't want to assign a value, but in the future,
///I promise you, I will give it a value before I want to use it.
///In fact, putting a variable of late type in the try and catch statement is a completely wrong thing,
///which if really Our goal was for the Dart compiler to try to understand whether this late variable has a value or not,
///we could have used optional variables much more safely, because at least we thought that the variable in question has a default value of null.
///
///
///
///
///

///Best practice----------------------------------------------------------------

///The ideal solution so that we don't have to use the late variables that we defined inside our class in this way,
///which is completely against Dart's recommendations, is to use optional variables instead or variables that are late final.
///We have defined it as final only, and in order to receive these values,
///wherever we create an instance of our class, we send these parameters to it and initialize it there.
///We are careful and the Dart compiler itself does not allow us to leave our variables without values,
///so we have to set the parameters and then send them to our class,
///which in fact, the final variables that we defined inside our class are set using the constructor.
///If we want to call the variable fullName, due to the fact that the value of fullName depends on the variables firstName and lastName,
///we can print it in the console without any worries.
///
///
class Person1 {
  final String firstName;
  final String lastName;
  late String fullName = "$firstName $lastName";

  Person1({required this.firstName, required this.lastName});

  //valid code,But we decided to use late keyword
  /* final String firstName;
  final String lastName;
  Person({required this.firstName, required this.lastName}); */
}
