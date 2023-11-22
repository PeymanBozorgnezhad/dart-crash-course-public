void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person
      .description); //In fact, this is the first place where you set and call this variable
  //  print(person.description);
}

class Person {
  late String description = heavyCalculationOfDescription();

  final int age;

  Person({this.age = 30}) {
    print("Constractor is called");
    // description = heavyCalculationOfDescription();
  }

  String heavyCalculationOfDescription() {
    print("Function 'heavyCalculationOfDescription' is called");
    return "Foo Bar";
  }
}
