import 'package:bloc/bloc.dart';
import 'package:ecomm/models/models.dart';
import 'package:ecomm/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';
import '/models/models.dart';
part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading());

   @override
   Stream<WishlistState> mapEventToState(WishlistEvent event) async*{
     if(event is StartWishList){
       yield* _mapStartWishListToState();
     }
     else if (event is AddWishListProduct){
       yield* _mapAddWishListProduct(event, state);
     } 
     else if( event is RemoveWishListProduct){
       yield* _mapRemoveWishListProduct(event,state);
     }


   }

  Stream<WishlistState> _mapStartWishListToState() async*{
    yield WishlistLoading();
    try{
      await Future<void>.delayed(Duration(seconds: 1));
      yield WishlistLoaded();
    }catch(_){

    }
  }

 Stream<WishlistState> _mapAddWishListProduct(AddWishListProduct event, WishlistState state) 
 async*{
   if(state is WishlistLoaded){
     try{
        yield WishlistLoaded(wishList: WishList(products: List.from(state.wishList.products)..add(event.products)));
     }
     catch(_){}
   }
 }

 Stream<WishlistState> _mapRemoveWishListProduct(RemoveWishListProduct event, WishlistState state) 
 async*{
   if(state is WishlistLoaded){
     try{
        yield WishlistLoaded(wishList: WishList(products: List.from(state.wishList.products)..remove(event.products)));
     }
     catch(_){}
   }
 }

  
  
}
