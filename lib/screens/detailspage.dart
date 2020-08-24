

import 'package:fashion_app/components/home_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  ProductDetails({this.prod_name, this.prod_picture, this.prod_old_price,
      this.prod_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: ListView(
        children: <Widget>[
          Container(
            height: 240,
            child: GridTile(
                child:Container(
                  color: Colors.white,
                  child: Image.asset(widget.prod_picture),
                ),
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(widget.prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("\$${widget.prod_old_price}",
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough
                            ),

                          ),
                        ),
                        Expanded(
                          child: Text("\$${widget.prod_price}",


                      ),)
                        ],
                    ),
                ),
                ),
            ),

          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context : context,
                    builder:(context){
                     return AlertDialog(
                        title: Text("size"),
                        content: Text("choose your size"),
                        actions: <Widget>[
                          MaterialButton(onPressed: (){
                            Navigator.pop(context);

                          },
                          child: Text("cancel"),)
                        ],
                      );

                    });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("size"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context : context,
                        builder:(context){
                         return AlertDialog(
                            title: Text("Color"),
                            content: Text("choose your Color"),
                            actions: <Widget>[
                              MaterialButton(onPressed: (){
                                Navigator.pop(context);

                              },
                                child: Text("cancel"),)
                            ],
                          );

                        });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context : context,
                        builder:(context){
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("choose your Quantity"),
                            actions: <Widget>[
                              MaterialButton(onPressed: (){
                                Navigator.pop(context);

                              },
                                child: Text("cancel"),)
                            ],
                          );

                        });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty"),),
                      Expanded(child: Icon(Icons.arrow_drop_down),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    elevation: 0.2,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Center(child: Text("Buy Now")),),

                      ],
                    ),
                  ),
                ),
                IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,),),
                IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,),)
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text("about product"),
            subtitle: Padding(padding: EdgeInsets.only(top: 5),child: Text("fdhsjkkkfhsdkfjsdkjkdsjdfjdsljsdfjkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkfdjfhsdjfsdjhfsdurkuweauopiqpieqpdasjlkjncmzmxdnfsdofiosuieujkdjkd  kcjfkdjfkd vk id  kdjf  slksldks n ")),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 5,5),
                  child: Text("Product Name",style: TextStyle(color: Colors.grey),)),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(widget.prod_name),
              )

            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 5,5),
                  child: Text("Product Brand",style: TextStyle(color: Colors.grey),)),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("brand X"),
              )

            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 5,5),
                  child: Text("Product Status",style: TextStyle(color: Colors.grey),)),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("New"),
              )

            ],
          )
        ],
      ),
    );
  }
}


