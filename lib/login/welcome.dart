import 'package:flutter/material.dart';
import 'package:project_iti/login/login.dart';
import 'package:project_iti/models/description.dart';
import 'package:project_iti/models/favorite.dart';
import 'package:project_iti/models/home_screen.dart';
import 'package:project_iti/models/product.dart';

class WelcomeScreen extends StatefulWidget {
//  const WelcomeScreen({Key? key}) : super(key: key);
  const WelcomeScreen({Key? key, required this.product, required this.index}) : super(key: key);
  final Product product;
  final int index;


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentIndex =0;
  List page =[
    HomeScreen(),
   // FavoriteScreen(product: widget.product, index: widget.index)
  ];
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    //---
    return Scaffold(
      body:
         page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'home screen', ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorit screen'),
        ],
        onTap: (value){
          setState(() {
            currentIndex =value;
          });
          print (value);
        },
      ),
    );
  }
}
