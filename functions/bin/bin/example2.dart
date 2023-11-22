void main(List<String> args) {
  ///normal variables
  /* print("Before");//[1] Before
  String name = provideName();//[2] Function is called
  print("After");//[3] After
  print(name);//[4] Foo Bar//It just returns the return value
  print(name);//[5] Foo Bar//It just returns the return value 
  */
//----------------------------------------------------------------
  ///late variable

  //In fact, the late variable allows you to assign something to it,
  //but that thing cannot be called and set until you use the late variable.

  print("Before"); //[1] Before
  //In fact, this provideName function is not called at this point and only when this function is called and initialized when we use it.
  //and its contents are returned to us only when we first use the late type variable.
  late String name = provideName(); //
  print("After"); //[2] After
  print(name); //[3] -[1] Function is called , -[2] Foo Bar
  //Here the function provideName is no longer called and we know that the function will be called and initialized.
  //In fact, the next time the variable is requested, only the return value of the function will be returned.
  print(name); //[4] Foo Bar
}

String provideName() {
  print("Function is called");
  return "Foo Bar";
}
