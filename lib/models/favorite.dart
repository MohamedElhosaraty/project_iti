import 'package:flutter/material.dart';
import 'package:project_iti/models/description.dart';
import 'package:project_iti/models/product.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key,required this.product, required this.index}) : super(key: key);
final  Product product;
  final int index;

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body:
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Description(
                      product: products[widget.index],
                      index: widget.index)));
            },
            child: Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white,
                      boxShadow: [ BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 25,
                          color: Colors.black12
                      )
                      ]
                  ),
                ),
                // image
                Positioned(
                    top: 0.0,
                    left: 0.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 160,
                      width: 200,
                      child: Image.asset(
                        widget.product.image,
                        fit: BoxFit.cover,),)),

                Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    top: 10.0,
                    child: SizedBox(
                      height: 136,
                      width: size.width - 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          // title
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(widget.product.title, style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold
                            ),),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //subtitle
                          Text(
                            widget.product.subtitle, style: TextStyle(
                              fontSize: 15),),
                          SizedBox(
                            height: 10,
                          ),
                          // price
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 5,
                                ),
                                child: Text('price :${widget.product.price}\$', style: TextStyle(
                                    fontSize: 20),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),


      );

  }
}
