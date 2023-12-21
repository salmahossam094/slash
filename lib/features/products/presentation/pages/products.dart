import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_intern/config/routes/routes.dart';
import 'package:slash_intern/core/utils/app_colors.dart';
import 'package:slash_intern/core/utils/text_styles.dart';
import 'package:slash_intern/features/products/data/data_sources/remote_dto.dart';
import 'package:slash_intern/features/products/presentation/manager/cubit.dart';
import 'package:slash_intern/features/products/presentation/manager/states.dart';
import 'package:slash_intern/features/products/presentation/widgets/product_widget.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(RemoteDTO())..getProduct(),
      child: BlocConsumer<ProductCubit, ProductStates>(
        listener: (context, state) {
          if (state is GetAllProductLoadingState) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: CircularProgressIndicator(
                  color: AppColors.onPrimary,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                'Slash.',
                style: poppins28W600(),
              ),
            ),
            body: state is GetAllProductLoadingState
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.onPrimary,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 5,
                            childAspectRatio: 2.8 / 4,
                            // padding: const EdgeInsets.all(10).w,
                            shrinkWrap: true,
                            children: ProductCubit.get(context)
                                .productEntity
                                .data!
                                .map((e) => Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              Routes.productDetailsRoute,
                                              arguments: e,
                                            );
                                          },
                                          child: ProductWidget(e: e)),
                                    ))
                                .toList(),
                          ),
                        )
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
