import 'package:flutter/material.dart';

class Shopping_cart extends StatefulWidget {
  const Shopping_cart({Key? key}) : super(key: key);

  @override
  State<Shopping_cart> createState() => _Shopping_cartState();
}

class _Shopping_cartState extends State<Shopping_cart> {
  int Counter =1;
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    int  price =1000;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.of(context).pop();
        },),
        title: Text('shopping cart'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              height: 300,
              child: Image.asset('assets/shop3.jpg'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('title',style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.bold
            ),),
          ),
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
                child: Text(
                  'haghg;hgh', style: TextStyle(
                    fontSize: 30),),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Quantity =',style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Counter++;
                    });
                    print(Counter);

                  },
                  child: Text('+',style: TextStyle(fontSize: 30),)),
              Text('$Counter' ,style: TextStyle(fontSize: 30),),
              SizedBox(
                width: 20,),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Counter--;
                    });
                  },
                  child: Text('-',style: TextStyle(fontSize: 50,color: Colors.blue),)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('The total amount = ${price * Counter}',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: InkWell(onTap: (){},
             child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
                color: Colors.orange,),
                  height: 70,
                 width: size.width-100,
                   child: Center(
                 child: Text('Buying',style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
    ),
    ),),
          ),

        ],
      ),
    );
  }
}
