import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:man/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("How do you like your Flower ? ",style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold),),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              margin: const EdgeInsets.fromLTRB(0,20,0,0),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Image.asset("/images/product1.png",width: 100,),
                        margin: const EdgeInsets.fromLTRB(0,0,20,0),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cherry Blossom",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Rp 100.000",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey),),
                        ],
                      )
                    ],
                  ),
                  Container(
                    // child: const Icon(Icons.arrow_forward_sharp),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_sharp),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const List()),
                        );
                      },
                    ),
                  )
                ],
              ) ,
            ),

            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              margin:const EdgeInsets.fromLTRB(0,20,0,0),
              padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child:Image.asset("/images/product2.png",width: 100,),
                        margin:const EdgeInsets.fromLTRB(0,0,20,0),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Spring flower",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Rp 100.000",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey),),
                        ],
                      )
                    ],
                  ),
                  Container(
                    child:const Icon(Icons.arrow_forward_sharp),
                  )
                ],
              ) ,
            ),

            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              margin:const EdgeInsets.fromLTRB(0,20,0,0),
              padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child:Image.asset("/images/product3.png",width: 100,),
                        margin:const EdgeInsets.fromLTRB(0,0,20,0),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Poppy Flower",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Rp 100.000",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey),),
                        ],
                      )
                    ],
                  ),
                  Container(
                    child:const Icon(Icons.arrow_forward_sharp),
                  )
                ],
              ) ,
            ),


          ],
        ),
      ),
    );
  }
}
