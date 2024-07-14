import 'package:flutter/material.dart';

import '../../core/componant/reuseable_components.dart';
import '../../feature/products/presentation/pages/products.dart';

class AppRoutesName {
  static const String products = "/";

}

class AppRoute {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.products:
        return MaterialPageRoute(
          builder: (context) => Products(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }
}
