import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {


  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var  products_list_in_cart=[
    {
      "name" :"blazer1",
      "imgpath" :"images/blazer1.jpeg",
      "price" :85,
      "Quantity" :1,
      "color":"black",
      "size":"M"
    },
    {
      "name" :"pants2",
      "imgpath" :"images/pants2.jpeg",
      "price" :75,
      "Quantity": 1,
      "color":"grey",
      "size":"37"
    },

  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products_list_in_cart.length,
        itemBuilder: (BuildContext context,int index){
        return SingleProductCart(
          prodCartName: products_list_in_cart[index]['name'],
          prodimage: products_list_in_cart[index]['imgpath'],
          prodPrice: products_list_in_cart[index]['price'],
          prodQuantity: products_list_in_cart[index]['Quantity'],
          prodColor: products_list_in_cart[index]['color'],
          prodSize: products_list_in_cart[index]['size'],

        );
        });

  }
}

class SingleProductCart extends StatelessWidget {
  final prodCartName;
  final prodimage;
  final prodPrice;
  final prodQuantity;
  final prodColor;
  final prodSize;


  SingleProductCart({this.prodCartName, this.prodimage, this.prodPrice,
      this.prodQuantity, this.prodColor, this.prodSize});

  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(
        leading: Image.asset(prodimage,height: 50,width: 50,),
        title: Text(prodCartName),
        subtitle: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Size",style: TextStyle(fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(prodSize,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  SizedBox(width: 20,),

                  Row(
                    children: <Widget>[
                      Text("Color",style: TextStyle(fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(prodColor,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(alignment: Alignment.topLeft,child: Text("\$$prodPrice",style: TextStyle(color: Colors.black45,fontSize: 14,fontWeight: FontWeight.bold),)),
            )
          ],
        ),
//        trailing: Expanded(
//          child: Column(
//
//            children: <Widget>[
//              IconButton(icon: Icon(Icons.arrow_drop_up,), onPressed: (){}),
//              IconButton(icon: Icon(Icons.arrow_drop_up,), onPressed: (){}),
//
//
//            ],        ),
        ),
      );

  }
}

