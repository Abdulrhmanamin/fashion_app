import 'package:flutter/material.dart';
import 'package:fashion_app/screens/cart.dart';

Widget MySideDrawer (BuildContext context){
  return Drawer(
    child: ListView(
      children: <Widget>[
        //header
        UserAccountsDrawerHeader(
            accountName: Text("AbdelrhamnAmin"),
            accountEmail: Text("dajdksjdk@gmail.com"),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.red
          ),
        ),
        //body
        InkWell(
          child: ListTile(
            title: Text("Home page"),
            leading: Icon(Icons.home,),
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text("My Account"),
            leading: Icon(Icons.person,),
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text("My Orders"),
            leading: Icon(Icons.shopping_basket,),
          ),
        ),
        InkWell(
          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));},
          child: ListTile(
            title: Text("Shopping cart"),
            leading: Icon(Icons.shopping_cart,),
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text("Favourites"),
            leading: Icon(Icons.favorite),
          ),
        ),
        Divider(height: 2,color: Colors.grey,),
        InkWell(
          child: ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings,color: Colors.green,),
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text("about"),
            leading: Icon(Icons.help,color: Colors.blue,),
          ),
        ),

      ],
      
    ),
  );
}