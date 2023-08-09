import 'package:flutter/material.dart';
import 'package:man/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(0,40,0,0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/opening.png",width:330,),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0,10,0,0),
              child: const Text("Lavender Garden",style:TextStyle(fontSize: 30,color:Colors.purple,fontWeight:FontWeight.bold)),
            ),
            Container(
              margin:const EdgeInsets.fromLTRB(0,0,0,10),
              child: const Text("Blooming Your Day",style:TextStyle(fontSize: 15,color:Colors.grey ),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize:const Size(300,60),
                  backgroundColor: Colors.purple,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  )
              ),
              onPressed:() {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => Home(),
                //   ),
                // );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: const Text("Enter Shop",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
