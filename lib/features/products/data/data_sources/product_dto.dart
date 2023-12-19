import 'package:dartz/dartz.dart';
import 'package:slash_intern/core/error/failures.dart';
import 'package:slash_intern/features/products/data/models/ProductData.dart';

abstract class ProductDTO {
  Future<Either<Failures, ProductData>> getProduct();
}
