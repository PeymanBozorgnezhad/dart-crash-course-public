void main(List<String> args) {
  // int? age; //by default value in dart language ====>> null
  // age.orDefault(); //by default value in Rust language ====>> 0
  // String? name; //by default value in dart language ====>> null
  // name.orDefault; //by default value in Rust language ====>> ''

  final fullName = getFullName("Peyman", "Poyan");
  print(fullName);
//----------------------------------------------------------------
  final fullName1 = getFullName(null, "Poyan");
  print(fullName1);
//----------------------------------------------------------------
  final fullName2 = getFullName("Peyman", null);
  print(fullName2);
//----------------------------------------------------------------
  final fullName3 = getFullName(null, null);
  print(fullName3);
}

String getFullName(
  String? firstName,
  String? lastName,
) =>
    "${firstName.orDefault} ${lastName.orDefault}";

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    } //
    else {
      switch (T) {
        case int:
          return 0 as T;
        case double:
          return 0.0 as T;
        case String:
          return "X" as T;
        case bool:
          return false as T;
        case List:
          return [] as T;
        default:
          throw Exception("No default value for type $T");
      }
    }
  }
}
