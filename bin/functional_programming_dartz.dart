import 'package:dartz/dartz.dart';

void main(List<String> arguments) {
  optionExample();
  final result1 = divide(10, 2); // Returns Right(5)
  final result2 = divide(10, 0); // Returns Left(Division by zero error)

  result1.fold(
    (error) => print('Error: $error'),
    (value) => print('Result: $value'),
  ); // Output: Result: 5

  result2.fold(
    (error) => print('Error: $error'),
    (value) => print('Result: $value'),
  );
}

void optionExample() {
  final someValue = Some(42);
  final noneValue = None();

  someValue.fold(
    () => print('Value does not exist'),
    (value) => print('Value is $value'),
  ); // Output: Value is 42

  noneValue.fold(
    () => print('Value does not exist'),
    (value) => print('Value is $value'),
  ); // Output: Value does not e
}

Either<String, int> divide(int a, int b) {
  if (b == 0) {
    return Left('Division by zero error');
  } else {
    return Right(a ~/ b);
  }
}
