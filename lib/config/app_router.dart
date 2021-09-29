import 'package:ecomm/models/models.dart';
import 'package:ecomm/screens/screen.dart';
import 'package:flutter/material.dart';

class AppRouter{

  static Route onGenerateRoute(RouteSettings settings){
    print('this is route: ${settings.name}');

    switch(settings.name){
      case '':
            return HomeScreen.route();
      case HomeScreen.routeName:
             return HomeScreen.route();
      case CartScreen.routeName:
             return CartScreen.route();
      case ProductScreen.routeName:
              return ProductScreen.route(product: settings.arguments as Product);
      case CatalogueScreen.routeName:
              return CatalogueScreen.route(category: settings.arguments as Category);
      case WishListScreen.routeName:
              return WishListScreen.route();
   
        break;
      default:
              return _ErrorRoute();
    }
  }

  static Route _ErrorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'),)));
  }

}