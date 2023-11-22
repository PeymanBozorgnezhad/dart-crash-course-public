void main(List<String> args) {
  ///Here, although the first parameter of the function we defined is mandatory,
  ///that is, it cannot have a default value, so-called positional arguments,
  ///and the second parameter of the desired function is of the named arguments type,
  ///and its parameter type is optional, that is, it can have a default value.
  ///For example, when we call this function at the call point, we can move the parameters,
  ///i.e. first set the lastName value and then set the firstName value.
  ///But if both parameters are positional arguments, then the calling attribute is important.

  ///valid code here
  describeFully("Peyman"); //Hello,Peyman Poyan
  describeFully("Peyman", lastName: "Poyan"); //Hello,Peyman Poyan
  describeFully("Peyman", lastName: null); //Hello,Peyman null
  describeFully(lastName: null, "Peyman"); //Hello,Peyman null
  describeFully(lastName: "Poyan", "Peyman"); //Hello,Peyman Poyan
//--------------------------------------------------------------
  ///invalid code here
  // describeFully();//1 positional argument expected by 'describeFully', but 0 found.Try adding the missing argument.
  // describeFully(null);//The argument type 'Null' can't be assigned to the parameter type 'String'.
  // describeFully(lastName: "Poyan");//1 positional argument expected by 'describeFully', but 0 found.Try adding the missing
  // describeFully(lastName: null);//1 positional argument expected by 'describeFully', but 0 found.Try adding the missing
  // describeFully(lastName: null, null);//The argument type 'Null' can't be assigned to the parameter type 'String'.
  // describeFully("Farhad", null);//Too many positional arguments: 1 expected, but 2 found.Try removing the extra positional arguments, or specifying the name for named arguments.
  // describeFully(null, "Asadnezhad");//Too many positional arguments: 1 expected, but 2 found.Try removing the extra positional arguments, or specifying the name for named arguments.
}

void describeFully(String firstName, {String? lastName = "Poyan"}) {
  print("Hello, $firstName $lastName");
}



///goal of this example was to demonstrate
///that you can mix and match different
///styles of parameters in your functions


