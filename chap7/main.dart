import '../chap6/user.dart';

void main() {
  whatNullMeans();
  problemWithNull();
  nullableVsNonNullable();
  typePromotion();
  ifNullOperator();
  nullAwareAccess();
  nullAssertionOperator();
  nullAwareIndexOperator();
}

void whatNullMeans() {
  int postalCode = 1345;
  // int postalCode = -1;
  // int postalCode = null;
}

void problemWithNull() {
  bool isPositive(int anInteger) {
    return !anInteger.isNegative;
  }

  print(isPositive(3));
  print(isPositive(-1));
  // print(isPositive(null));
}

void nullableVsNonNullable() {
  int myInt = 1;
  double myDouble = 3.14159265;
  bool myBool = true;
  String myString = 'Helo, bimri';
  User myUser = User(id: 42, name: 'bimri');
  // int postalCode = null;

  int? age;
  double? height;
  String? message;
  print(age);
  print(height);
  print(message);
}

void handlingNullableTypes() {
  String? name;
  // print(name.length);
}

void typePromotion() {
  String? name;
  name = 'bimri';
  print(name.length);

  bool isPositive(int? anInteger) {
    if (anInteger == null) {
      return false;
    }
    return !anInteger.isNegative;
  }
}

void ifNullOperator() {
  String? message;
  final text = message ?? 'Error';
  print(text);

  // String text;
  // if (message == null) {
  //   text = 'Error';
  // } else {
  //   text = message;
  // }
  // print(text);
}

void nullAwareAssignmentOperator() {
  double? fontSize;
  fontSize = fontSize ?? 20.0;
}

void nullAwareAccess() {
  int? age;
  print(age?.isNegative);
  print(age?.toDouble());
}

void nullAssertionOperator() {
  // String nonNullableString = nullableString!;

  bool? isBeautiful(String? item) {
    if (item == 'flower') {
      return true;
    } else if (item == 'garbage') {
      return false;
    }
    return null;
  }

  //bool flowerIsBeautiful = isBeautiful('flower');
  //bool flowerIsBeautiful = isBeautiful('flower')!;
  //bool flowerIsBeautiful = isBeautiful('flower') as bool;
  bool flowerIsBeautiful = isBeautiful('flower') ?? true;
}

void nullAwareCascadeOperator() {
  // User user = User();
  //   ..name = 'Rao';
  //   ..id = 34;

  // User? user;
  // user
  //   ?..name = 'Rau';
  //   .. = 42;
  //   String? lengthString = user?.name?.length.toString();
}

// class User {
//   String? name;
//   int? id;
// }

void nullAwareIndexOperator() {
  List<int>? myList = [1, 3, 45, 5];
  myList = null;
  int? myItem = myList?[2];
  print(myItem);
}

void initializingNonNullableClassFields() {
  // final user = User(name: null);
}

// class User {
//   String name;
// }
// class User {
//   String name = 'anonymous';
// }
// class User {
//   User(this.name);
//   String name;
// }
// class User {
//   User(String name)
//     : _name = name;
//   String _name;
// }
// class User {
//   User([this.name = 'anonymous']);
//   String name;
// }
// class User {
//   User({this.name = 'anonymous'});
//   String name;
// }
// class User {
//   User({required this.name});
//   String name;
// }

void nullableInstanceVariables() {
  //final user = User(name: null);

  bool isLong(String? text) {
    if (text == null) {
      return false;
    }
    return text.length > 100;
  }
}
// class User {
//   User({this.name});
//   String? name;
// }

// class TextWidget {
//   String? text;
//   bool isLong() {
//     if (text == null) {
//       return false;
//     }
//     //return text.length > 100; // error
//     return text!.length > 100;
//   }
// }

class TextWidget {
  String? text;
  bool isLong() {
    final text = this.text; // shadowing
    if (text == null) {
      return false;
    }
    return text.length > 100;
  }
}

void lateKeyword() {
  // // final user = User();
  // print(user.name);
}

// class User {
//   User(this.name);

//   final String name;
//   late final int _secretNumber = _calculateSecret();

//   int _calculateSecret() {
//     return name.length + 42;
//   }
// }

// class User {
//   User(this.name) {
//     _secretNumber = _calculateSecret();
//   }
//   late final int _secretNumber;
//   final String name;

//   int _calculateSecret() {
//     return name.length + 42;
//   }
// }

// class User {
//   late String name;
// }

class someClass {
  late String? value = doHeavyCalculation();
  String? doHeavyCalculation() {
    // do heavy calculation
  }
}
