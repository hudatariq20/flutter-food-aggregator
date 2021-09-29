
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFFe63946),
      child: Container( 
                       height: 70,
                       child:  Row( 
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                         IconButton(onPressed: (){
                           Navigator.pushNamed(context, '/');
                         },
                         icon: Icon(Icons.home, color: Colors.white,)),
                         IconButton(onPressed: (){
                            Navigator.pushNamed(context, '/cart');
                         }, 
                         icon: Icon(Icons.shopping_basket, color: Colors.white,)),
                         IconButton(onPressed: (){
                            Navigator.pushNamed(context, '/profile');
                         }, 
                         icon: Icon(Icons.person, color: Colors.white,)),
                       ],),
                       ),
    );
  }
}
