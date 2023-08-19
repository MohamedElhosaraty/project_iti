import 'package:flutter/material.dart';
import 'package:project_iti/models/description.dart';
import 'package:project_iti/models/favorite.dart';
import 'package:project_iti/models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int itemIndex;
    Product product;
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        title: Text(
          'Welcome to the programme',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            // big stack
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      itemIndex = index;
                      product = products[index];

                      return Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        height: 250,
                        // stack 2
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Description(
                                  product: products[index],
                                  index: index,
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 25,
                                          color: Colors.black12)
                                    ]),
                              ),
                              // image
                              Positioned(
                                  top: 0.0,
                                  left: 0.0,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    height: 160,
                                    width: 200,
                                    child: Image.asset(
                                      product.image,
                                      fit: BoxFit.cover,
                                    ),
                                  )),

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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            product.title,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        //subtitle
                                        Text(
                                          product.subtitle,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        // price
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(22),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 30,
                                                vertical: 5,
                                              ),
                                              child: Text(
                                                'price :${product.price}\$',
                                                style: TextStyle(fontSize: 20),
                                              ),
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
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
