import 'package:ecomm/blocs/cart/cart_bloc.dart';
import 'package:ecomm/blocs/category/category_bloc.dart';
import 'package:ecomm/blocs/wishlist/wishlist_bloc.dart';
import 'package:ecomm/config/theme.dart';
import 'package:ecomm/repositories/category/category_repository.dart';
import 'package:ecomm/repositories/product/product_repository.dart';
import 'package:ecomm/screens/screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/product/product_bloc.dart';
import 'config/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 // Bloc.observer = SimpleBlockOB
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
            BlocProvider(create: (_) => WishlistBloc()..add(StartWishList())),
            BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
            BlocProvider(create: (_) => CategoryBloc(categoryRepository: CategoryRepository())..add(LoadCategories())),
            BlocProvider(create: (_) => ProductBloc(productRepository: ProductRepository())..add(LoadProduct())),
      ],
     
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
        //home: HomeScreen()
      ),
    );
  }
}
