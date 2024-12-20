import 'package:logger/logger.dart';

void main() {
  basicTypeVariable();
}

var logger = Logger();

void basicTypeVariable() {
  int intValue = 0;
  double piValue = 3.14;
  num anyNumber = 232;
  bool yes = true;
  bool no = false;
  int? nothing;

  int? age = 20;
  int defaultAge = age ?? 18; // Usa 18 si `age` es `null`.
  logger.i(defaultAge); // Imprimirá `18`.

  logger.i(intValue);
  logger.i(piValue);
  logger.i(anyNumber);
  logger.i(yes);
  logger.i(no);
  logger.i(nothing);
}
