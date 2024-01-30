void arithmeticOperator1() {
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
}

void arithmeticOperator2() {
  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.

  print(a++); // 1 -> 2
  print(a++); // 2 -> 3
  print(++a); // 4 -> 4
  print(a); // 4
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
}

void comparisonOperator1() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
}




// 매우 중요! 상속 가능!
void typeTestOperator() {
  var bob = employee();
  bob.firstName = 'bob';

  if (bob is person) {  // 오브젝트가 특정한 타입을 가지고있는가 ? bob(employee) person class 상속 'True'
    print(bob.firstName);
  } else {
    print("bob은 person 클래스를 상속받고 있지 않습니다.");
  }

  if (bob is Object) {  // 오브젝트가 특정한 타입을 가지고있는가 ? 최상위 Object class 'True'
    print(bob.firstName);
  }
}

class person {
  dynamic firstName;
  dynamic lastName;
}

class employee extends person {
  dynamic firstName;
  dynamic lastName;
}

// 할당 연산자
void assignmentOperator() {
  var value = "around";

  var a = "hub";
  var b = "studio";

  a = value;
  //b ??= value;  // b라는 객체의 value값이 있는지(null인지 확인 후) 확인 후 해당 값을 대입하는 방법.

  print(a);
  print(b);
}

// 논리 연산자
void logicalOperator() {
  if ((1 == 1) && ((1 == 2) || (3 == 3))) {
    print("true");
  }
}

// bit 연산
void bitwiseAndShiftOperator() {
  final value = 0x22; // 34
  final bitmask = 0x0f; // 15

  print(value);
  print(bitmask);

  print((value & bitmask)); // AND
  print((value & ~bitmask)); // AND NOT
  print((value | bitmask)); // OR
  print((value ^ bitmask)); // XOR
  print((value << 4)); // Shift left
  print((value >> 4)); // Shift right
  print((value >>> 4)); // Unsigned shift right
  print((-value >> 4)); // Shift right
  print((-value >>> 4)); // Unsigned shift right
}

void main() {
  arithmeticOperator2();
}