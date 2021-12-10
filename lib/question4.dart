void main() {
  var result = StringBuffer();
  Map<String, int> str = {
    "num 1": null,
    "num 2": 2,
    "num 3": 3,
    "num 4": 4,
    "num 5": null,
    "num 6": 6,
    "num 7": 7,
    "num 8": null
  };
  str.removeWhere((key, value) => value == null);
  result.writeAll(str.keys, ",");
  print(result.toString());
}
