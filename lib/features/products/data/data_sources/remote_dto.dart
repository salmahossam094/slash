import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slash_intern/core/apis/end_points.dart';
import 'package:slash_intern/core/error/failures.dart';
import 'package:slash_intern/core/utils/constants.dart';
import 'package:slash_intern/features/products/data/data_sources/product_dto.dart';
import 'package:slash_intern/features/products/data/models/ProductData.dart';

class RemoteDTO extends ProductDTO {
  Dio dio = Dio();

  @override
  Future<Either<Failures, ProductData>> getProduct() async {
    try {
      var response = await dio.get('${Constants.apiUrl}${Endpoints.product}');
      ProductData data = ProductData.fromJson(response.data);
      return Right(data);
    } catch (e) {
      return Left(ServerFailures(e.toString()));
    }
  }
}
