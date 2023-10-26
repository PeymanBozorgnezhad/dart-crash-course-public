void main(List<String> args) {
  const int1 = 1;
  const double1 = 1.1;
  const int2 = 2;

  ///The int1 type is promoted from integer to double.
  ///A plus operator is defined specifically for double,
  ///which allows type promotion to occur as long as there is a double type inside the expression.
  const double result = double1 + int1; //(double, int)---+--->double
  const double result1 = int1 + double1; //(int, double )---+--->double
  const int result2 = int2 + int1; //(int , int)---+--->int
  print(result);
  print(result1);
  print(result2);
}
