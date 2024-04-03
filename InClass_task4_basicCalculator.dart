import 'dart:io';

void main() {
  calculation();
}

void repeatCalculation() {
  print('Press R to do for other Numbers');
  String repeat = stdin.readLineSync()!;

  if (repeat == 'r' || repeat == 'R') {
    calculation();
  } else {
    print('Wrong Input');
    return repeatCalculation();
  }
}

void calculation() {
  print('Enter the 1st Number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter the 2nd Number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  print('Select the Operator\n'
      '+ for Sum\n'
      '- for Subtraction\n'
      'x for Multiplication\n'
      '/ for Division');
  String operator = stdin.readLineSync()!;

  int sum = num1 + num2;
  int differance = num1 - num2;
  int multiply = num1 * num2;
  double division = num1 / num2;

  if (operator == '+') {
    print('Sum of the entered Numbers: $sum');
  } else if (operator == '-') {
    print('Differance of the entered Numbers: $differance');
  } else if (operator == 'x') {
    print('Multiplication of the entered Numbers: $multiply');
  } else if (operator == '/') {
    print('Division of the entered Numbers: $division');
  } else {
    print('Wrong Input, Please select the right one');
  }

  repeatCalculation();
}
