void main(List<String> args) {
  ///Although both the Dart compiler and we know that this function has a Named argument,
  ///but because we gave a default value to the named parameter in the subfunction,
  ///so here we don't want to send a value for the named parameter of the desired function.
  ///Because we want to display the default value
  ///In fact, we do not have to send him an amount
  sayHelloTo(); //Hello, Peyman!
//----------------------------------------------------------------
  //If we don't want to send a value,
  //it actually sends a null default value because it is null
  //optional value >>> String? name
  sayHelloTo1(); //Hello, null!
  //or
  //If we want to send some
  sayHelloTo1(name: null); //Hello, null!
  sayHelloTo1(name: "Aref"); //Hello, Aref!
//----------------------------------------------------------------
}

///If we are going to use the default value of the named parameter of the function, there are two cases,
///either we should use a non-null value that is exactly the same type of variable that we defined as a parameter,
///or it should be an optional value.
void sayHelloTo({String name = "Peyman"}) {
  print("Hello, $name!");
}
//or----------------------------------------------------------------

void sayHelloTo1({String? name}) {
  print("Hello, $name!");
}
