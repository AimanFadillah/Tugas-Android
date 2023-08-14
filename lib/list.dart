import 'package:flutter/material.dart';
import 'package:man/create.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {

  bool list1 = false;
  bool list2 = false;
  bool list3 = false;
  bool list4 = false;


  void actionCheck1 () {
    setState(() {
      if(list1){
        list1 = false;
      }else{
        list1 = true;
      }
    });
  }

  void actionCheck2 () {
    setState(() {
      if(list2){
        list2 = false;
      }else{
        list2 = true;
      }
    });
  }

  void actionCheck3 () {
    setState(() {
      if(list3){
        list3 = false;
      }else{
        list3 = true;
      }
    });
  }

  void actionCheck4 () {
    setState(() {
      if(list4){
        list4 = false;
      }else{
        list4 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Create()),
            );
          },
          child:const Icon(Icons.add,color: Colors.purple,),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
          ),
        ),
        body:Container(
          margin: const EdgeInsets.all(20),
          child: Column(

            children: [
              const Text("To Do list",style: TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold)),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                ),
                margin:const EdgeInsets.fromLTRB(0,20,0,0),
                padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          // child:Icon(Icons.check_box_outline_blank,size: 30,),
                          child:IconButton(
                            icon:(list1 ? const Icon(Icons.check_box,size: 30,) : const Icon(Icons.check_box_outline_blank,size: 30,)),
                            onPressed:actionCheck1,
                          ),
                          margin:const EdgeInsets.fromLTRB(0,0,20,0),
                        ),
                        Text("Ngerjain mtk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                            decoration: (list1 ? TextDecoration.lineThrough : TextDecoration.none)
                          ),
                        )
                      ],
                    ),
                  ],
                ) ,
              ),

              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                ),
                margin:const EdgeInsets.fromLTRB(0,20,0,0),
                padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          // child:Icon(Icons.check_box_outline_blank,size: 30,),
                          child:IconButton(
                            icon:(list2 ? Icon(Icons.check_box,size: 30,) : Icon(Icons.check_box_outline_blank,size: 30,)),
                            onPressed:actionCheck2,
                          ),
                          margin:const EdgeInsets.fromLTRB(0,0,20,0),
                        ),
                        Text("Drama Pai",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                            decoration: (list2 ? TextDecoration.lineThrough : TextDecoration.none)
                        ),
                        )
                      ],
                    ),
                  ],
                ) ,
              ),

              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                ),
                margin:const EdgeInsets.fromLTRB(0,20,0,0),
                padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          // child:Icon(Icons.check_box_outline_blank,size: 30,),
                          child:IconButton(
                            icon:(list3 ? Icon(Icons.check_box,size: 30,) : Icon(Icons.check_box_outline_blank,size: 30,)),
                            onPressed:actionCheck3,
                          ),
                          margin:const EdgeInsets.fromLTRB(0,0,20,0),
                        ),
                        Text("Commit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                            decoration: (list3 ? TextDecoration.lineThrough : TextDecoration.none)
                        ),
                        )
                      ],
                    ),
                  ],
                ) ,
              ),

              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                ),
                margin:const EdgeInsets.fromLTRB(0,20,0,0),
                padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          // child:Icon(Icons.check_box_outline_blank,size: 30,),
                          child:IconButton(
                            icon:(list4 ? Icon(Icons.check_box,size: 30,) : Icon(Icons.check_box_outline_blank,size: 30,)),
                            onPressed:actionCheck4,
                          ),
                          margin:const EdgeInsets.fromLTRB(0,0,20,0),
                        ),
                        Text("Project",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                            decoration: (list4 ? TextDecoration.lineThrough : TextDecoration.none)
                        ),
                        )
                      ],
                    ),
                  ],
                ) ,
              ),

            ],
          ),
        ),
    );



  }
}
