import 'package:dartz/dartz.dart';
import 'package:slash_intern/core/error/failures.dart';
import 'package:slash_intern/features/products/domain/entities/product_entity.dart';

abstract class ProductDomainRepo {
  Future<Either<Failures, ProductEntity>> getProduct();
}
