import 'package:fashion_app/components/cursoal.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/components/home_app_bar.dart';
import 'package:fashion_app/components/MysideBar.dart';
import 'package:fashion_app/components/horzentalListView.dart';
import 'package:fashion_app/components/products.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context) ,
      drawer: MySideDrawer(context),
      body:ListView(
        children: <Widget>[
          imageCarousel(),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Text("Categroies"),

          ),
          horzentalListView(),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Text("Recent Products"),

          ),
          Container(
            height: 230,
            child: Products(),
          )
        ],
      ),
    );

  }
}
