import 'package:fashion_app/screens/cart.dart';
import 'package:flutter/material.dart';

Widget myAppBar (BuildContext context){
  return AppBar(
    elevation: 0.0,
    title:
    Text('FashionApp',
      style: TextStyle(
        color: Colors.white
      ),

    ),
    backgroundColor: Colors.red,
    actions: <Widget>[
      IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
      IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
      }),

    ],
  );

}