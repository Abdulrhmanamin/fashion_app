import 'package:fashion_app/screens/detailspage.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productsList=[
    {

      "name" :"blazer1",
      "imgpath" :"images/blazer1.jpeg",
      "old_price" :120,
      "price" :85
    },

    {

      "name" :"dress1",
      "imgpath" :"images/dress1.jpeg",
      "old_price" :120,
      "price" :85
    },
    {

      "name" :"dress2",
      "imgpath" :"images/dress2.jpeg",
      "old_price" :130,
      "price" :90
    },
    {

      "name" :"hills1",
      "imgpath" :"images/hills1.jpeg",
      "old_price" :80,
      "price" :70
    },
    {

      "name" :"pants2",
      "imgpath" :"images/pants2.jpeg",
      "old_price" :90,
      "price" :75
    },


  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount: productsList.length,
        itemBuilder: (BuildContext context,int index){
          return SingleProduct(
            prod_name: productsList[index]['name'],
            prod_photo: productsList[index]['imgpath'],
            prod_old_price: productsList[index]['old_price'],
            prod_price: productsList[index]['price'],
          );
        });
  }
}
class SingleProduct extends StatelessWidget {

  final prod_name;
  final prod_photo;
  final prod_old_price;
  final prod_price;

  SingleProduct({this.prod_name, this.prod_photo, this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails(prod_name: prod_name,
                    prod_picture: prod_photo,
                    prod_old_price: prod_old_price,
                    prod_price: prod_price)));
              },
              child: GridTile(
                footer: Container(
                  height: 60,
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold

                      ),
                    ),
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
                    ),
                    subtitle: Text(
                      "\$$prod_old_price",
                      style: TextStyle(fontWeight: FontWeight.w400,color: Colors.red,decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                  child: Image.asset(prod_photo,),

              ),
            ),
          ))
    );
  }
}

