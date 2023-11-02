void main(List<String> args) {
  // final lastName = "Foo";
  // print(lastName.length);

  //----------------------------------------------------------------

  /// ?. operator is used to To access the features and methods of an optional or nullable variable,
  ///  we must use Null safety operator or Null aware operator.
  /// "?." --->>> Null safety operator or Null aware operator
  /* String? lastName;
  print(lastName?.length); //length = null

  //----------------------------------------------------------------

  ///Here, the Dart compiler really understands that the lastName variable has a real value of the String data type,
  /// and therefore it is not necessary to use the "?." operator to access the properties or methods.
  ///  and we use dot(".") instead
  String? lastName1 = "Foo";
  print(lastName1.length); //length = 3

  //----------------------------------------------------------------

  ///Actually, what happens here is that the Dart compiler checks if the value on the left is null.
  /// It returns the value on the right, otherwise the value of the variable remains whatever it is.
  String? nullName;
  // print(nullName ?? "there is a null value");
  String? foo;
  final bla1 = nullName ??
      foo; //الان این عبارت چطوری میخواهد تضمین کند که نتیجه نال نیست،در صورتیکه چه عبارت سمت راست  و چه عبارت سمت چپ
  //  هر دو مقدار نال دارند...
  final bla = nullName ??
      "there is a null value"; //bla data type is String,is not data type of optional value
  //ما انتظار داشتیم که عبارت سمت راست از نوع داده String? باشه ولی از نوع داده String هست/:
  //نتیجه عبارت بالا کاملا تضمین میکند که null نمی تواند باشد.
  print(bla); //value is "there is a null value"
  print(nullName); //value is null

  //----------------------------------------------------------------

  ///In fact, this part is completely unnecessary and should be removed(?? "there is a null value" )
  ///because Dart fully understands that nullNmae has a real value of String data type.
  String? nullName1 = "Foo";
  print(nullName1 ??
      "there is a null value"); //print("nullName by default value") -->>Foo
  print(nullName1); //value is Foo */

  String? name;
  String? name1;
  print(
      name1 ?? "Foo"); //It fully guarantees that the final result is not null.
  print(name1 ??
      name); //It cannot guarantee that the final result will not be null.
  print(name1 ??
      name ??
      "Bar"); //It fully guarantees that the final result is not null.
  //(name1??name)---result data type-->>> String? ##### (null??null)--->> //null
  //(null??"Bar")----result data type--->> String ##### //Bar
  //
  // print(name);
  // print(name1);
  final bal = name1 ?? name ?? "Bar"; //final result data type is String
  //----------------------------------------------------------------

  //******************** "??" the job of is operator it takes the non null value.*****************
}
