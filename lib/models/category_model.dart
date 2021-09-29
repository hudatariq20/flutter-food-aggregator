
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';


class Category extends Equatable{

  final String name;
  final String imageUrl;

  Category({
    required this.name,
    required this.imageUrl
  });

  static List<Category> categories = [
    Category(name: 'Smoothies', imageUrl: 'http://images.unsplash.com/photo-1610970881699-44a5587cabec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
    Category(name: 'Detox Drinks', imageUrl: 'http://images.unsplash.com/photo-1556881286-fc6915169721?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
    Category(name: 'Soft Drinks', imageUrl: 'http://images.unsplash.com/photo-1533007716222-4b465613a984?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
  
  ];
  @override
  List<Object?> get props => [name,imageUrl];

  static Category fromSnapshot(DocumentSnapshot snap){
      Category category =
                  Category(name: snap['name'], imageUrl: snap['imageUrl']);
      return category;
  }
  
}