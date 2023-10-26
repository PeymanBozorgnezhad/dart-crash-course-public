void main(List<String> args) {
  ///Different types for operators
  //unary operator(postfix/prefix) >>> int a = 0; ---->> a++ or ++a ,!
  //infix operator >>> int a = 0, b = 0; ---->> int a = 10 , int b = 20; --->> a ~/ b--->>int ~/(num other)
  //binary operator >>> int a = 0, b = 0; ---->> a+b
  //componed assignment operator >>> int a = 0 ---->> a (+= or -= or *= or /=) 1;
  //assignment operator >>> int a = 0, b = 0; ---->> a = b;
  //logical operator >>> int a = 0, b = 0; ---->> a && b;
  //logical operator >>> int a = 0, b = 0; ---->> a || b;

  /* int age = 40; //39
  int age2 = --age; //39
  print(--age); //38
  print(age2); //39
  print(age); //38
  print("--------------------------------------------------------");
  int age3 = 40; //39
  int age4 = age3--; //40
  print(age3--); //39
  print(age3); //38
  print(age4); //40

  
 */

  /// unary prefix operators
  int age = 40;
  print(++age); //age = 41 , age++ = 41
  print(age);
  int age2 = 40;
  print(--age2); //age2 = 39 , --age2 = 39
  print(age2);
  print(!true);
  const myTrueValue =
      true; //myTrueValue unmodifilable only "! operator"  return unlike
  print(!myTrueValue);

  /// unary bitwise completment prefix operator
  print(~1); //---->>-2

  //(0000 0000) (0000 0000) (0000 0000) (0000 0001) ---- ~1 ---->> (1111 1111) (1111 1111) (1111 1111) (1111 1110)
  ///minus unary prefix
  print(-age); //-41--->>>>>age unmodifiable only "- operator" return minus
  print(--age); // age = age - 1 ---- 41-1 = 40 -------> result--->> //40
  print(age++); // age++ -->>40 , age = 41
  print(
      --age); //age = 40 ,--age = 40 --->>modifiable **در اینجا در واقع ما در حال تغییر مقدار داخلی آن متغیر نیز هستیم و جدای از اینکه مقدار قدیمی مقدارش تغییر میکنه و به روزرسانی میشه مقدار قدیمیش.اون مقدار جدید رو برمیگردونیم
  print(-(-age)); // age = 40 , (-age) = -40 , -(-age) = +40
}
