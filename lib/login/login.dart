import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_iti/login/welcome.dart';
import 'package:project_iti/models/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _forKey =GlobalKey<FormState>();
  bool ispassword = true;
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      body: Form(
        key: _forKey,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
          children: [
            //image
          Container(
          height: 400,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(top: 50,right: 50,left: 50,bottom: 10),
                child: Image(
                   image: AssetImage('assets/shop1.jpg')),
          )
    ),
            // Text form email
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: emailcontroller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value){
                if(value == null || value.contains('@gmail.com') ==false){
                  return 'Enter valid Email';
                }
              },
              decoration: InputDecoration(labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder()),
            ),
          ),

          SizedBox(
              height: 20,
            ),

            // Text form Password
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordcontroller,
                obscureText: ispassword,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  if(value == null || value.length <8){
                    return 'Enter valid passwoed';
                  }
                },
                decoration: InputDecoration(labelText: 'password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon:ispassword ?
                    IconButton(icon: Icon(Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        ispassword = !ispassword;
                      });
                    },) : IconButton(icon: Icon(Icons.visibility),
                      onPressed: (){
                        setState(() {
                          ispassword = !ispassword;
                        });
                      },),
                    border: OutlineInputBorder()),
              ),
            ),

          SizedBox(
            height: 20,
          ),

          // bottom login
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 300,
            child: MaterialButton(onPressed: () async {
              if(_forKey.currentState!.validate()) {
                bool result =await fireBaseLogin(emailcontroller.text, passwordcontroller.text);
                if(result == true){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('success')),
                  );
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) =>
                          WelcomeScreen(product: null,)

                  ),
                  );
                }

              }
            },
              child: Text('LOGIN',
                style: TextStyle(fontSize: 25),),),
          ),

          SizedBox(
              height: 20,
            ),

          // bottom sing up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('you don\'t have an account?',
                style: TextStyle(fontSize: 20),),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed('sing_up');
              },
                  child: Text('sing up',
                      style: TextStyle(fontSize: 20)))
            ],
          ),



    ]
          ),
    ),
      ),
    );
  }
  Future<bool> fireBaseLogin(String email ,String password) async {
    try {
      UserCredential usercredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if(usercredential.user !=null){
        return true;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}

