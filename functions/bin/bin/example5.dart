void main(List<String> args) {
  ///late keyword final variables
  ///Here, in fact, a variable is defined as a type of late keyword.
  ///In fact, it is not that different from ordinary variables.
  ///The only difference it has compared to normal variables is that the value assigned to them is only used when These are the variables.
  ///They are initialized and called for the first time, while normal variables are not like that,
  ///in fact, the moment they are assigned a value, the value is stored in them.

  /* late String name = provideName();
  print(name); */ //Function is called , Foo Bar
//----------------------------------------------------------------

  ///The difference of using late keyword final variables compared to late keyword is that the late keyword variables are after a value is assigned to them and we have the ability
  ///to change their value before we want to use them like normal variables.
  ///If late keyword final variables are not allowed to be changed at compile time due to the limitation of the final data type.

  late String name = provideName();
  name = "Foo Bar";
  print(name); //Foo Bar

  late final String name1 = provideName();
  //invalid code here
  // name1 = "Foo Bar";
  print(name1); //Function is called , Foo Bar
//----------------------------------------------------------------
  ///only uses of late keyword,And we can initialize it with many values of the same type
  final person = Person();
/*   invalid code here
  print(person.description);
  person.description = "Description1";
 */
  //valid code here
  person.description = "Description 1";
  print(person.description);
  person.description = "Description 2";
  print(person.description);
//----------------------------------------------------------------
  ///late keyword final variables

  final woof = Dog();

  ///invalid code here
  //Actually, before I wanted to assign a value to my variable and actually write on it,
  //I came to read it right away and asked the compiler to read it for me.
  // print(woof.description);

  //valid code here
  //Exactly here it behaves like a variable of another type
  woof.description = "Description 1";
  print(woof.description);

  //invalid code here,Because the description variable is of the final data type, it means that we cannot assign multiple values to it at compile time,
  //and it can only have one value at compile time, but at run time,
  //we can change its internal content.Here, just because the variable was a late keyword,
  //the compiler didn't catch it at the time of compilation,
  //but it will definitely catch it at the time of execution.
  woof.description = "Description 2";
  print(woof.description);

  /* try {
    woof.description = "Description 2";
    print(woof.description);
  } //
  catch (error) {
    print(error);
  } */
}

String provideName() {
  print("Function is called");
  return "Foo Bar";
}

class Person {
  late String description;
}

class Dog {
  //valid code here
  late final String description;
  //invalid code here
  //final late String description1;
}
