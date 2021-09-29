import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecomm/models/category_model.dart';
import 'package:ecomm/repositories/category/base_category_repository.dart';
import 'package:firebase_database/firebase_database.dart';

class CategoryRepository extends BaseCategoryRepository{

  final FirebaseFirestore _firebaseFirestore;

  CategoryRepository({FirebaseFirestore? firebaseFirestore}) : _firebaseFirestore =
      firebaseFirestore ?? FirebaseFirestore.instance;


  @override
  Stream<List<Category>> getAllCategories() {
     return  _firebaseFirestore.collection('categories')
                               .snapshots()
                               .map((snapshot) => snapshot.docs.map((doc) => Category.fromSnapshot(doc)).toList());
  }
  
}