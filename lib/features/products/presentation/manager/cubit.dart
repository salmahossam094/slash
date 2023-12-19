import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_intern/features/products/presentation/manager/states.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(ProductInitState());
 static ProductCubit get(context)=> BlocProvider.of(context);
}
