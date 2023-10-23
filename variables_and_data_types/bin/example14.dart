void main(List<String> args) {
  ///good name define for variable
  const thierNames = ["Ahmad", "Alam", "hami"];
  print(thierNames);

  ///bad name define for variable

  // ignore: non_constant_identifier_names
  //linter rouls >>> non_constant_identifier_names
  final Wow = "wow";
  print(Wow);

  // ignore: constant_identifier_names
  //linter rouls >>> constant_identifier_names
  const SomeName = "Vandad";
  print(SomeName);
}
