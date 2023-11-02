void main(List<String> args) {
  final String result = getFullName(null, null);
  print("Result:$result");
//-----------------------------------------------------------
  final String result1 = getFullName(null, "poyan");
  print("Result1:$result1");
//-----------------------------------------------------------
  final String result2 = getFullName("peyman", null);
  print("Result2:$result2");
//-----------------------------------------------------------
  final String result3 = getFullName("peyman", "poyan");
  print("Result3:$result3");
}

String getFullName(String? firstName, String? lastName) =>
    withAll(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    "Empty";

///<T> ====>>> generic type
///withAll<T> ====>>> generic function
T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
//for example
/* String? withAll<String>(
  List<String?> optionals,
  String Function(List<String>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<String>());
 */

/* //or for example
int? withAll<int>(
  List<int?> optionals,
  int Function(List<int>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<int>()); */
