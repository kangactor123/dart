class UserInfo {
  int count = 0;

  UserInfo(this.count);
}

class Language {
  String name;
  late String _type;
  UserInfo userinfo;

  Language(this.name, this.userinfo);

  void setType(String type) {
    this._type = type;
  }

  String getType() {
    return this._type;
  }

  void printLangInfo() {
    print(
        'name: ${this.name}, type: ${this._type}, user count: ${this.userinfo.count}');
  }
}

class Vehicle {
  String _color;
  String _type;
  late String maker;

  Vehicle(this._color, this._type);

  void setColor(String color) {
    this._color = color;
  }

  void setType(String type) {
    this._type = type;
  }

  void setMaker(String maker) {
    this.maker = maker;
  }

  void printing() {
    print('${this._color}, ${this._type}, ${this.maker}');
  }
}

class Car extends Vehicle {
  String _name;
  late String ownerName;

  Car(super.name, super.color, this._name);

  void setName(String name) {
    this._name = name;
  }

  void buyThisCar(String name) {
    this.ownerName = name;
  }

  void printing() {
    print(this.ownerName);
    // if (this.ownerName != null)
  }
}

main() {
  var userinfo = UserInfo(100000);
  var Dart = Language('Dart', userinfo);
  Dart.setType('Compiler');
  Dart.printLangInfo();
}
