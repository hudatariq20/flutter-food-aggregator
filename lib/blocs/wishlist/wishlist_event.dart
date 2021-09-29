part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}


class StartWishList extends WishlistEvent{}

class AddWishListProduct extends WishlistEvent{
  final Product products;

  const AddWishListProduct({
    required this.products,
  });

  
  @override
  List<Object> get props => [products];

}

class RemoveWishListProduct extends WishlistEvent{
  final Product products;

  const RemoveWishListProduct({
    required this.products,
  });

  
  @override
  List<Object> get props => [products];

}