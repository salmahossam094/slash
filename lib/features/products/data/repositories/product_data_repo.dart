import 'package:dartz/dartz.dart';
import 'package:slash_intern/core/error/failures.dart';
import 'package:slash_intern/features/products/domain/entities/product_entity.dart';
import 'package:slash_intern/features/products/domain/repositories/product_domain_repo.dart';

class ProductDataRepo extends ProductDomainRepo{
  @override
  Future<Either<Failures, ProductEntity>> getProduct() {
    // TODO: implement getProduct
    throw UnimplementedError();
  }

}