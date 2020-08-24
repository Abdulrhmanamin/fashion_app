import 'package:flutter/material.dart';

Widget horzentalListView(){
  return Container(
    height: 80,
    child: ListView(

      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Categroies(imagpath: 'images/tshirt.png', categroyName: "tshirt"),
        Categroies(imagpath: 'images/dress.png', categroyName: "dress"),
        Categroies(imagpath: 'images/jeans.png', categroyName: "pants"),
        Categroies(imagpath: 'images/formal.png', categroyName: "formal"),
        Categroies(imagpath: 'images/informal.png', categroyName: "informal"),
        Categroies(imagpath: 'images/shoe.png', categroyName: "shoes"),
        Categroies(imagpath: 'images/accessories.png', categroyName: "accessories"),


      ],
    ),
  );
}
class Categroies extends StatelessWidget {
  final String imagpath;
  final String categroyName;

  Categroies({@required this.imagpath,@required this.categroyName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(imagpath,width: 100,height: 50,),
            subtitle: Container(child: Text(categroyName,style: TextStyle(fontWeight: FontWeight.w400),),alignment: Alignment.topCenter,),
          ),
        ),
      ),
    );
  }
}
