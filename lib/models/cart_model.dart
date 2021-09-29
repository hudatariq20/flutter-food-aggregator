import 'package:ecomm/models/product_model.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable{
  final List<Product> products;
  const Cart({
    this.products = const <Product>[],
  });

  double get subtotal => products.fold(0, (total, current) => total + current.price);

  String get subtotalString => subtotal.toStringAsFixed(2);


  double deliveryFee(subtotal){
    if(subtotal >= 30.0){
      return 0.0;
    }else{
      return 10.0;
    }
  }

  String get deliveryfeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String freedelivery(subtotal){
     if(subtotal >= 30.0){
       return 'You have free delivery';
       
     }else{
       double missing = 30.0 - subtotal;
       return 'Add \$${missing.toStringAsFixed(2)} for free delivery';
     }
  }

  String get freedeliveryString => freedelivery(subtotal);

  double total(subtotal, deliveryfee){
    return subtotal + deliveryFee(subtotal);
  }

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);
  @override
  List<Object?> get props => [products];

  
  Map quantityproduct(products){
    var quantity = Map();

    products.forEach((product){
      if(!quantity.containsKey(product)){
       quantity[product] = 1;
      }else{
       quantity[product] += 1;
      }
    });

    return quantity;
  }


  
}