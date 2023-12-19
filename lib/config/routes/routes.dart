import 'package:flutter/material.dart';
import 'package:slash_intern/core/utils/components.dart';
import 'package:slash_intern/features/products/presentation/pages/products.dart';

class Routes {
  static const String productRoute = 'Product';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.productRoute:
        return MaterialPageRoute(
          builder: (context) => const Products(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => unDefinedPage(),
        );
    }
  }
}
