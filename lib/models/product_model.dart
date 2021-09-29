
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable{

  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular
  });
  @override
  List<Object?> get props => [name, category, imageUrl, price, isPopular, isRecommended];

  static Product fromSnapshot(DocumentSnapshot snap){
    Product product = Product(
            name: snap['name'], 
            category: snap['category'],
            imageUrl: snap['imageUrl'],
            price: snap['price'], 
            isRecommended: snap['isRecommended'],
            isPopular: snap['isPopular']
        );
        return product;
  }




  static List<Product> products = [
    Product(
     name: 'Coco Cola Sugar Free',
     category: 'Soft Drinks',
     imageUrl: 'https://images.unsplash.com/photo-1543253687-c931c8e01820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
     price: 2.99, 
     isRecommended: true, 
     isPopular: false
    ),
     Product(
     name: 'Punch',
     category: 'Soft Drinks',
     imageUrl: 'https://images.unsplash.com/photo-1560689189-65b6ed6228e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
     price: 1.99, 
     isRecommended: true, 
     isPopular: false
    ),
    Product(
     name: 'Pepsi',
     category: 'Soft Drinks',
     imageUrl: 'https://images.unsplash.com/photo-1600456531963-f51054e51619?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
     price: 2.05, 
     isRecommended: false, 
     isPopular: true
    ),
     Product(
     name: 'Cucumber Mint Drink',
     category: 'Detox Drinks',
     imageUrl: 'https://images.unsplash.com/photo-1611497426695-412abe2f287b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=740&q=80',
     price: 1.05, 
     isRecommended: true, 
     isPopular: true
    ),
    Product(
     name: 'Strawberry Smoothie',
     category: 'Smoothies',
     imageUrl: 'https://images.unsplash.com/photo-1595981235768-d8f466028cd6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
     price: 1.95, 
     isRecommended: true, 
     isPopular: true
    ),
    
  ];
  
}