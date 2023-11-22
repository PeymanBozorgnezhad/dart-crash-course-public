void main(List<String> args) {
  final peymanPoyan = Person(name: "Peyman Poyan");
  final fardinPoyan = Person(name: "Fardin Poyan");

  final poyanFamily = WrongImplementationOfFamily(
    members: [
      peymanPoyan,
      fardinPoyan,
    ],
  ); //Getting members count
  print(poyanFamily); //Instance of 'WrongImplementationOfFamily'
  print(poyanFamily.membersCount); //2

//----------------------------------------------------------------

  final arefKamfar = Person(name: "Aref Kamfar");
  final hamedKamfar = Person(name: "Hamed Kamfar");

  final kamfarFamily = RightImplementationOfFamily(
    members: [
      arefKamfar,
      hamedKamfar,
    ],
  );
  print(kamfarFamily); //Instance of 'RightImplementationOfFamily'
  print(kamfarFamily.membersCount); // [1]:Getting members count , [2]:2
}

class Person {
  final String name;

  Person({required this.name});
}

//---------------------------------WrongImplementation-------------------------------
class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    //In fact, when we use the late keyword variables in our class,
    //we must assign them a value, but here is an example of incorrect and wrong values for the late keyword variables.
    //The setting mode inside the constrictor body is wrong,
    //and the late variable is resolved immediately in this mode,
    //and in fact, it no longer has the property of being lazy.
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print("Getting members count");
    return members.length;
  }
}

//--------------------------------RightImplementation--------------------------------
class RightImplementationOfFamily {
  final Iterable<Person> members;
  //In fact, here, when we use late keyword variables in our class,
  //we basically have to assign them a value or, so to speak,
  //assign a value to them, leading to the correct form, exactly like this example.
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print("Getting members count");
    return members.length;
  }
}
