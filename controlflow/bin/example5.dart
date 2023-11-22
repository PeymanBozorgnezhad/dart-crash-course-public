void main(List<String> args) {
  descibe(1); //This is an integer
  descibe(1.1); //This is a double
  descibe("Hello world!"); //This is a string
  descibe({'key': 'value'}); //This is a map
  descibe({'key': 0}); //This is Something else
  descibe([1, 2, 3, 4]); //This is Something else
}

void descibe<T>(T value) {
  switch (T) {
    case int:
      print("This is an integer");
      break;
    case double:
      print("This is a double");
      break;
    case String:
      print("This is a string");
      break;
    case bool:
      print("This is a boolean");
      break;
    case const (Map<String, String>):
      print("This is a map");
      break;
    default:
      print("This is Something else");
      break;
  }
}
