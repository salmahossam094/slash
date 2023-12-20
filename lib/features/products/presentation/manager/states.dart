import 'package:slash_intern/core/error/failures.dart';

abstract class ProductStates {}

class ProductInitState extends ProductStates {}

class GetAllProductSuccessState extends ProductStates {}

class GetAllProductErrorState extends ProductStates {
  Failures failures;

  GetAllProductErrorState(this.failures);
}

class GetAllProductLoadingState extends ProductStates {}
