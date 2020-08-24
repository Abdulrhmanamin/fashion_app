import 'package:fashion_app/screens/home.dart';
import 'package:fashion_app/screens/registerscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  SharedPreferences sharedPreferences;
  bool loading =false;
  bool isLoging=false;
  final _formkey =GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
//  void initState() {
//
//    super.initState();
//    isSignedIn();
//  }
//  void isSignedIn() async{
//    setState(() {
//      loading=true;
//    });
//    sharedPreferences = await SharedPreferences.getInstance();
//    isLoging =await googleSignIn.isSignedIn();
//    if(isLoging){
//      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
//    }
//    setState(() {
//      loading=false;
//    });
//  }
//  Future<String> signInWithGoogle() async {
//    GoogleSignIn googleSignIn =new GoogleSignIn();
//    FirebaseAuth firebaseAuth=FirebaseAuth.instance;
//    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//    final GoogleSignInAuthentication googleSignInAuthentication =
//    await googleSignInAccount.authentication;
//
//    final AuthCredential credential = GoogleAuthProvider.getCredential(
//      accessToken: googleSignInAuthentication.accessToken,
//      idToken: googleSignInAuthentication.idToken,
//    );
//
//    final AuthResult authResult = await firebaseAuth.signInWithCredential(credential);
//    final FirebaseUser user = authResult.user;
//
//    assert(!user.isAnonymous);
//    assert(await user.getIdToken() != null);
//
//    final FirebaseUser currentUser = await firebaseAuth.currentUser();
//    assert(user.uid == currentUser.uid);
//
//    return 'signInWithGoogle succeeded: $user';
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


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
              padding: EdgeInsets.only(top: 80),
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
                          padding: EdgeInsets.fromLTRB(16,100,16,8),
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
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16,8,16,16),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: TextFormField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  icon:Icon (Icons.lock_outline),
                                ),
                              ),
                            ),
                          ),
                        ),
                Padding(
                    padding: EdgeInsets.fromLTRB(32,8,32,4),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red.shade400,
                      elevation: 0,
                      child: MaterialButton(
                        onPressed: (){},
                        minWidth: MediaQuery.of(context).size.width,
                        child: Text("login",textAlign: TextAlign.center,style: TextStyle(
                          color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold
                        ),),

                      ),
                    )),
                       Padding(
                         padding: EdgeInsets.all(4),
                         child: Text("forget password",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 12),),
                       ) ,
                        Padding(
                          padding: EdgeInsets.all(4),
                          child:InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                            },
                            child: Text("sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),
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
      ),
//      bottomNavigationBar: Container(
//        child:Padding(
//          padding: EdgeInsets.all(8),
//          child: FlatButton(
//              color: Colors.red.shade900,
//              onPressed: (){
//                signInWithGoogle().whenComplete((){
//                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
//                });
//              },
//              child: Text("Sign in / sign up with google",style: TextStyle(color: Colors.white), )),
//        ),
//      ),
    );
  }
}
