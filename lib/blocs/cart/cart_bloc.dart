import 'package:bloc/bloc.dart';
import 'package:ecomm/models/models.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading());

  Stream<CartState> mapEventToState(CartEvent event) async*{

      if (event is CartStarted){
        yield*  _mapCarEventStartedToState();
      }else if(event is CartProductAdded){
        yield* _mapCarProductAddedToState(event,state);
      }else if(event is CartProductRemoved){
        yield* _mapCarProductRemovedToState(event,state);
      }
  }

   Stream<CartState>_mapCarEventStartedToState() async* {
     yield CartLoading();
     try{
      await Future<void>.delayed(Duration(seconds: 1));
      yield CartLoaded();
     }catch(_){}
   }

   Stream<CartState> _mapCarProductAddedToState(CartProductAdded event, CartState state) 
   async*{

     if (state is CartLoaded){
       try{
          yield CartLoaded(
            cart : Cart(products: List.from(state.cart.products)..add(event.product)));
       }catch(_){}
     }

  }

 Stream<CartState> _mapCarProductRemovedToState(CartProductRemoved event, CartState state)
 async* {

        if (state is CartLoaded){
       try{
          yield CartLoaded(
            cart : Cart(products: List.from(state.cart.products)..remove(event.product)));
       }catch(_){}
     }

 }
}
