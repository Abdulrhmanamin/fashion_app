import 'package:fashion_app/db/users.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool loading =false;
  String gender;
  String groupvalue="male";
  bool hidepass=true;

  final _formkey =GlobalKey<FormState>();
  FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  UserServices userServices=UserServices();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmpasswordController=TextEditingController();
  TextEditingController fullnameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/loginback.jpeg',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,

          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
          ),

          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 60),
              alignment: Alignment.center,
              child: Center(
                child: Form(
                    key: _formkey,
                    child: Column(
                      children: <Widget>[
                        Container(

                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.topLeft,
                          child: Image.asset('images/logo.jpg',width: 60,height: 60,fit: BoxFit.cover,),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16,50,16,4),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: TextFormField(
                                controller: fullnameController,
                                decoration: InputDecoration(
                                  hintText: "full name",
                                  icon:Icon (Icons.person),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16,4,16,4) ,
                          child: Container(
                            color:  Colors.white.withOpacity(0.2),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      "male",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    trailing: Radio(value: "male", groupValue: groupvalue, onChanged: (e)=>valueChanged(e)),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      "female",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    trailing: Radio(value: "female", groupValue: groupvalue, onChanged: (e)=>valueChanged(e)),
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16,4,16,4),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  icon:Icon (Icons.alternate_email),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16,4,16,4),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: ListTile(
                                title: TextFormField(
                                  controller: passwordController,
                                  obscureText: hidepass,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    icon:Icon (Icons.lock_outline),
                                      border: InputBorder.none
                                  ),
                                ),
                                trailing: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
                                  setState(() {
                                    hidepass=false;
                                  });
                                }),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16,4,16,8),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: ListTile(
                                title: TextFormField(
                                  controller: confirmpasswordController,
                                  obscureText: hidepass,
                                  decoration: InputDecoration(
                                    hintText: "confirm Password",
                                    icon:Icon (Icons.lock_outline),
                                      border: InputBorder.none
                                  ),
                                ),
                                trailing: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
                                  setState(() {
                                    hidepass=false;
                                  });
                                }),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(32,12,32,8),
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red.shade400,
                              elevation: 0,
                              child: MaterialButton(
                                onPressed: ()async{
                                  validateform();
                                },
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text("Register",textAlign: TextAlign.center,style: TextStyle(
                                    color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                                ),),

                              ),
                            )),

                        Padding(
                            padding: EdgeInsets.all(8),
                            child:InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Text("login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                            )
                        )

                      ],
                    )
                ),
              ),
            ),
          ),



          Visibility(
            visible: loading ?? true,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.7),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
            ),)
        ],
      ),);
  }

  valueChanged(e) {
    setState(() {
      if(e=="male"){
        groupvalue=e;
        gender=e;
      }
      else if(e=="female"){
        groupvalue=e;
        gender=e;
      }
    });
  }

  void validateform() async {
    FormState formState=_formkey.currentState;
    if(formState.validate()){
      formState.reset();
      FirebaseUser user= await firebaseAuth.currentUser();

      if(user==null){
        firebaseAuth.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text).then((user)=>{
              userServices.createUser(

                {
                  "username": fullnameController,
                  "email": emailController,
                  "gender":gender,


                }
              )

        }).catchError((e)=> {print(e.toString())});
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    }

  }
}
