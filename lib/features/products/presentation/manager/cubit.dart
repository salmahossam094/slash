import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_intern/features/products/data/data_sources/product_dto.dart';
import 'package:slash_intern/features/products/data/repositories/product_data_repo.dart';
import 'package:slash_intern/features/products/domain/entities/product_entity.dart';
import 'package:slash_intern/features/products/domain/repositories/product_domain_repo.dart';
import 'package:slash_intern/features/products/domain/use_cases/product_usecase.dart';
import 'package:slash_intern/features/products/presentation/manager/states.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit(this.dto) : super(ProductInitState());
  ProductDTO dto;

  static ProductCubit get(context) => BlocProvider.of(context);
  ProductEntity productEntity=ProductEntity();

  getProduct() async {
    emit(GetAllProductLoadingState());
    ProductDomainRepo productDomainRepo = ProductDataRepo(dto);
    ProductUsecase productUsecase =
        ProductUsecase(productDomainRepo: productDomainRepo);
    var result = await productUsecase.call();
    result.fold((l) {
      emit(GetAllProductErrorState(l));
    }, (r)  {
      productEntity=r;
      emit(GetAllProductSuccessState());
    });
  }
}
