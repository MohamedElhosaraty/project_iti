import 'package:flutter/material.dart';
import 'package:project_iti/login/login.dart';

class OnBoarding_Screen extends StatefulWidget {
  const OnBoarding_Screen({Key? key}) : super(key: key);

  @override
  State<OnBoarding_Screen> createState() => _OnBoarding_ScreenState();
}

class _OnBoarding_ScreenState extends State<OnBoarding_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  'assets/welcome1.jpg',fit: BoxFit.cover,width: double.infinity,),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Screen title',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            Text(
              'Screen body',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'indicator',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Colors.orange,
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                child: Icon(Icons.arrow_forward_ios,),)
              ],
            )


          ],
        ),
      ),
    );
  }
}
