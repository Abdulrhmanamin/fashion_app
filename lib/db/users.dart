import 'dart:math';

import 'package:firebase_database/firebase_database.dart';

class UserServices{
FirebaseDatabase firebaseDatabase=FirebaseDatabase.instance;
String ref="users";

createUser(Map value){
  firebaseDatabase.reference().child(ref).push().set(value).catchError((e)=> {
    print(e.toString())
  });
}
}