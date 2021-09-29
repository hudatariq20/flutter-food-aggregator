import 'package:ecomm/models/models.dart';
import 'package:ecomm/widgets/widget.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatelessWidget {

  static const String routeName = '/catalogue';

  static Route route({required Category category}){
     return MaterialPageRoute(
       settings: RouteSettings(name: routeName),
       builder: (_) => CatalogueScreen(category: category),
       );
  }

  final Category category;
  CatalogueScreen({
    required this.category,
  });
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct =  Product.products.
                                                where((product) => product.category == category.name)
                                                .toList();
    return Scaffold(
      appBar: CustomAppBar(title: category.name),
      bottomNavigationBar: CustomBottomAppBar(),
      body: GridView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16.0
              ),
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.15,
                  ),
                itemCount: categoryProduct.length,
                itemBuilder: (BuildContext context, int index){
                    return Center(child: ProductCard(product: categoryProduct[index], widthFactor: 2.5,));
                }
                ),
    );
  }
}