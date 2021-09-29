import 'package:ecomm/models/category_model.dart';

abstract class BaseCategoryRepository{
  Stream<List<Category>> getAllCategories();
  
}