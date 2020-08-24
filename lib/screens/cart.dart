import 'package:fashion_app/components/cartProducts.dart';
import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0.0,
        title:
        Text('FashionApp',
          style: TextStyle(
            color: Colors.white
        ),

      ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){})],
    ),
      body: CartProducts(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children : <Widget>[
                 Text("Total",style: TextStyle(fontSize: 16),),
                 SizedBox(width: 15,),
                 Text("\$500"),
              ]),
            ),
            Expanded(child: MaterialButton(
              onPressed: (){},
              child: Text("check out",
                style: TextStyle(
                    color: Colors.white
                ),),
              color: Colors.red,
              ))
          ],
        ),
      ),

    );
  }
}
