class Enum {
  Map<dynamic, dynamic> e;

  Enum(this.e);

  value(dynamic key) {
    return e[key];
  }
}

class EnumItem {
  int key;
  dynamic value;

  EnumItem(this.key, this.value);
}
