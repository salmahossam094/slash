import 'package:dartz/dartz.dart';
import 'package:slash_intern/core/error/failures.dart';
import 'package:slash_intern/features/products/data/data_sources/product_dto.dart';
import 'package:slash_intern/features/products/data/models/ProductData.dart';

class LocalDTO extends ProductDTO {
  @override
  Future<Either<Failures, ProductData>> getProduct() {
    // TODO: implement getProduct
    throw UnimplementedError();
  }
}
