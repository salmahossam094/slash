import 'package:flutter/material.dart';
import 'package:slash_intern/core/utils/components.dart';
import 'package:slash_intern/features/product_details/presentation/pages/product_details.dart';
import 'package:slash_intern/features/products/domain/entities/product_entity.dart';
import 'package:slash_intern/features/products/presentation/pages/products.dart';

class Routes {
  static const String productRoute = 'Product';
  static const String productDetailsRoute = 'Product-Details';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.productRoute:
        return MaterialPageRoute(
          builder: (context) => const Products(),
        );
      case Routes.productDetailsRoute:
        Data e = routeSettings.arguments as Data;
        return MaterialPageRoute(
          builder: (context) => ProductDetails(
            dataM: e,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => unDefinedPage(),
        );
    }
  }
}
