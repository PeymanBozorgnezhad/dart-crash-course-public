void main(List<String> args) {
  /* ///In fact, the result variable became a result function ( int result() ),
  ///which, as you know, we can call functions.
  final result =
      doSomething1(10, 20); //result type of is a ------->>> int Function()
  ///So here, the result data type is a function type,
  ///which itself expects an int return value,
  ///so we can call the result as a function.
  result(); //result() Function type of is a --------->>> int
  print(result()); */ //10+20=30

  print(doSomething1(10, 20)()); //10+20 = 30
}

int doSomething(int lhs, int rhs) => lhs + rhs;
int Function() doSomething1(int lhs, int rhs) => () => lhs + rhs;
