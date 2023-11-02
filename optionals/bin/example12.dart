void main(List<String> args) {
  String? firstName = "peyman";
  String? lastName = "poyan";

  final fullName = firstName.flatMap(
        (f) => lastName.flatMap(
          (l) => "$f $l", //firstName = "peyman" , lastName = "poyan"
        ),
      ) ??
      "Either first or last name or both are null"; //firstName = null, lastName = "poyan" /or/ firstName = peyman, lastName = null /or/firstName = null, lastName = null
  print(fullName);
}

extension FlatMap<T> on T? {
  ///The callBack function is a function to convert data type T to R
  R? flatMap<R>(R? Function(T) callback) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } //
    else {
      return callback(shadow);
    }
  }
}
