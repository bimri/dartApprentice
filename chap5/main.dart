void main() {
  anatomyOfDartFunction();
  usingMultipleParameters();
  makingParametersOptional();
  providingDefaultValues();
  namingParameters();
  makingNamedParametersRequired();
  avoidingSideEffects();
  usingAnonymousFunctions();
  returningAFunction();
  anonymousFunctionsInForEachLoops();
  closuresAndScope();
}

void anatomyOfDartFunction() {
  String compliment(int number) {
    return '$number is a great number';
  }

  const input = 42;
  final output = compliment(input);
  print(output);
}

void usingMultipleParameters() {
  void helloPersonAndPet(String person, String pet) {
    print('Hello, $person, and your annoying creature, $pet');
  }

  helloPersonAndPet('Kesho', 'Jason');
}

void makingParametersOptional() {
  String fullName(String first, String last, [String? title]) {
    if (title != null) {
      return '$title $first $last';
    } else {
      return '$first $last';
    }
  }

  print(fullName('bimri', 'griot'));
  print(fullName('Tesla', 'Nikola', 'Prof.'));
}

void providingDefaultValues() {
  bool withinTolerance(int value, [int min = 0, int max = 10]) {
    return min <= value && value <= max;
  }

  print(withinTolerance(5));
  print(withinTolerance(15));
  print(withinTolerance(9, 7, 11));
  print(withinTolerance(9, 7));
}

void namingParameters() {
  bool withinTolerance(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  print(withinTolerance(9, min: 7, max: 11));
  print(withinTolerance(9, max: 11, min: 7));
  print(withinTolerance(5));
  print(withinTolerance(15));
  print(withinTolerance(5, min: 7));
  print(withinTolerance(15, max: 20));
}

void makingNamedParametersRequired() {
  bool withinTolerance({
    required int value,
    int min = 0,
    int max = 10,
  }) {
    return min <= value && value <= max;
  }

  print(withinTolerance(value: 9));
}

void avoidingSideEffects() {
  String hello() {
    return 'Hello!';
  }

  print(hello());

  var myPreciousData = 5782;

  String anInnocentLookingFunction(String name) {
    myPreciousData = -1;
    return 'Hello, $name. Heh, heh, heh.';
  }

  print(myPreciousData);
  print(anInnocentLookingFunction('Bob'));
  print(myPreciousData);
}

void optionalTypes() {
  compliment(number) {
    return '$number is a very nice number.';
  }
}

void assigningFunctionsToVariables() {
  int number = 4;
  String greeting = 'hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };

  // Function myFunction = int multiply(int a, int b) => a * b;
}

void usingAnonymousFunctions() {
  final multiply = (int a, int b) {
    return a * b;
  };

  print(multiply(200000000, 400000));
}

void returningAFunction() {
  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  final triple = applyMultiplier(3);
  print(triple(200));
  print(triple(14.0));
}

void anonymousFunctionsInForEachLoops() {
  const numbers = [1, 2, 3, 4, 5];
  numbers.forEach((num) {
    final tripled = num * 3;
    print(tripled);
  });

  // You can also define the function separately and pass it in
  // directly to `forEach()`.
  final triple = (int number) {
    final tripled = number * 3;
    print(tripled);
  };
  numbers.forEach(triple);
}

void closuresAndScope() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };

  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter);

  Function countingFunction() {
    var counter = 0;
    final incrementCounter = () {
      counter += 1;
      return counter;
    };
    return incrementCounter;
  }

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1());
  print(counter2());
  print(counter1());
  print(counter1());
  print(counter2());
}

void arrowFunctionRefactoringExample1() {
  // final multiply = (int a, int b) {
  //   return a * b;
  // };

  final multiply = (int a, int b) => a * b;

  print(multiply(2, 3));
}

void arrowFunctionRefactoringExample2() {
  // Function applyMultiplier(num multiplier) {
  //   return (num value) {
  //     return value * multiplier;
  //   };
  // }

  Function applyMultiplier(num multiplier) {
    return (num value) => value * multiplier;
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));
}

void arrowFunctionRefactoringExample3() {
  const numbers = [1, 2, 3];

  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  numbers.forEach((number) => print(number * 3));
}
