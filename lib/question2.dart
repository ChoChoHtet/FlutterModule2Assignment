void main() {
  Map<String, int> numbers = Map<String, int>();
  numbers["iphone 1"] = 8000;
  numbers["iphone 2"] = 9000;
  numbers["iphone 3"] = 10000;
  numbers["iphone 4"] = 14000;
  numbers["iphone 5"] = 11000;
  numbers["iphone 6"] = 12000;
  numbers["iphone 7"] = 10000;
  numbers["iphone 8"] = 23000;
  numbers["iphone 9"] = 25000;
  numbers["iphone 10"] = 30000;

  var result =numbers
      .values
      .where((element) => element > 10000)
      .reduce((value, element) => value + element);

  print(result);
}
