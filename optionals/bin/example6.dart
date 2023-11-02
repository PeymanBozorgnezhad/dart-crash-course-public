void main(List<String> args) {
  ///container data type

  //optional List
  List<String>? names;
  print(names); //null

//----------------------------------------------------------------
  //optional String
  /* List<String?> names1 = [];
  print(names1); */ //[]
//----------------------------------------------------------------
  //optional list of optional strings
  //When both the data type of our container and the content that is placed inside our container according to the specific data type are both optional,
  //we must use the null safety operator or null aware operator to call the functions or features of this variable.
  //to have access to those functions or features.
  //(?.) This operator comes after the variable and checks a condition that says that if the variable itself or its internal value was not null in this state,
  //you are allowed to call the function or feature otherwise In this case,
  //that special function or feature will not be called at all.
  List<String?>? names2; //names7 initialized with a null value
  names2?.add("Foo");
  names2?.add(null);
  print(names2); //null

  //I extract my first value from this list, what should we do? Considering that
  final String? first = names2?.first; //first varible data type is String?
  print(first ?? "No first name found"); //No first name found
  print("First>>>>>>>$first"); //null

  /* List<String> strLst = [];
  // Unhandled exception:
  // Bad state: No element
  final firstElement = strLst.first;
  print(firstElement); */

  /* List<String?>? names7 = []; //names7 initialized with a non null value
  //unnecessary null aware operator(?.)
  //Instead, we should use dot to directly access the functions and features
  //that we are going to call
  names7.add("Foo");
  names7.add(null);
  print(names7);  */ //[Foo,null]

  //************** */
  /* names7 = null;
  names7?.add("Foo");
  names7?.add(null);
  print(names7); //null */
  //************* */
//------------------------------------------------------------------------
  //or
  /* ist<String?>? names3 = ["a", "b", "c"];
  names3.add(null);
  print(names3); */ //[a,b,c]
//------------------------------------------------------------------------
  //or
  /* List<String?>? names4 = [];
  print(names4); */ //[]
//------------------------------------------------------------------------
  //or
  /* List<String?>? names5 = [null, "a", "b", "c"];
  print(names5); */ //[null,a,b,c]
//------------------------------------------------------------------------
  //or
  /* List<String?>? names6 = [null];
  print(names6); */ //[null]
}
