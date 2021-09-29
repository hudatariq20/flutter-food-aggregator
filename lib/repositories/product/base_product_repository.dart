import 'package:ecomm/models/models.dart';

abstract class BaseProductRepository{

  Stream<List<Product>> getAllProducts();
} 