import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_intern/features/product_details/presentation/manager/states.dart';
import 'package:slash_intern/features/products/domain/entities/product_entity.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsStates> {
  ProductDetailsCubit({required this.e}) : super(ProductDetailsInitState());

  static ProductDetailsCubit get(context) => BlocProvider.of(context);
  Data e = Data();
  List<String> images = [];
  bool visible = false;
  int indx = 0;

  fillImagesList() {
    for (int i = 0; i < e.productVariations!.length; i++) {
      for (int j = 0;
          j < e.productVariations![i].productVarientImages!.length;
          j++) {
        images.add(
            e.productVariations![i].productVarientImages![j].imagePath ?? '');
      }
    }
  }

  description() {
    emit(GetDescriptionLoadingState());
    try {
      visible = !visible;
      emit(GetDescriptionSuccessState());
    } catch (e) {
      emit(GetDescriptionErrorState());
    }
  }

  selectSize(int i) {
    emit(ChangeSizeLoadingState());
    indx = i;
    emit(ChangeSizeSuccessState());
  }
}
