void main(List<String> args) {
  ///positinal Arguments
  ///valid code here
  //How to use positional arguments correctly
  sayGoodByTo("Peyman", "Fardin");
  sayGoodByTo1("Peyman", "Fardin");
  sayGoodByTo1(null, "Fardin");
  sayGoodByTo1("Peyman", null);
  sayGoodByTo1(null, null);
//----------------------------------------------------------------
  ///these are all invalid code here
  ///How to use positional arguments incorrectly
  //sayGoodByTo(andOtherPerson, person);//they do not have a default value and must always be sent to these parameters from the part they are called from
  //
  //sayGoodByTo();//2 positional arguments expected by 'sayGoodByTo', but 0 found. try adding the missing arguments.
  //
  //sayGoodByTo("person");//2 positional arguments expected by 'sayGoodByTo', but 1 found. try adding the missing arguments.
  //
  //sayGoodByTo("andOtherPerson");//2 positional arguments expected by 'sayGoodByTo', but 1 found. try adding the missing arguments.
  //
  // sayGoodByTo(person: "Peyman", andOtherPerson: "Fardin");//The named parameter 'andOtherPerson' isn't defined.Try correcting the name to an existing named parameter's name, or defining a named parameter with the name 'andOtherPerson'.
  //
  //2 positional arguments expected by 'sayGoodByTo1', but 0 found.Try adding the missing arguments.
  //
  // sayGoodByTo1();//Positional Arguments do not have default values at all, even if our parameters or arguments are of the nullable optional value type.
  //
  // sayGoodByTo1(null,);//2 positional arguments expected by 'sayGoodByTo1', but 1 found.Try adding the missing arguments.
}

///Rules about positional arguments
//[1]:In the same order as they are defined in the desired function, they must be received exactly in the same order in each place and place they are called, and the associated value should be given to them.
//[2]:Positional arguments are always required, But it does not have the required keyword (that is, they do not have a default value and must always be sent to these parameters from the part they are called from)
//[3]:Positional Arguments are not placed inside Curly braces and are placed inside a normal parenthesis
//[4]:The so-called positional arguments are mandatory
//[5]:Positinal Arguments, where we call them, are available with the name we define for them inside the desired function, when they are called without a name.
void sayGoodByTo(
  String person,
  String andOtherPerson,
) {
  print("Goodbye, $person and $andOtherPerson!");
}

//or

void sayGoodByTo1(
  String? person,
  String? andOtherPerson,
) {
  print("Goodbye, $person and $andOtherPerson!");
}
