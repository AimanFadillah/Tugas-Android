import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        margin: const  EdgeInsets.all(10),
        child: Column (
          children: [
            Container(
              child: const Text("Create List",style: TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: const TextField(
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Border color for normal state
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Border color for focused state
                    ),
                    hintText: 'Masukkan Judul',
                    fillColor: Colors.white,
                    filled: true,
                  ),
              )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize:const Size(30,30),
                      backgroundColor: Colors.red,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      )
                  ),
                  onPressed:() {

                  },
                  child: const Text("Batal",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize:const Size(30,30),
                      backgroundColor: Colors.green,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        )
                  ),
                  onPressed:() {
                    final snackBar = SnackBar(
                      content: const Text('Belum Dibuat'),
                      action: SnackBarAction(
                        label: 'Hapus',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text("Create",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
