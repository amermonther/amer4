import 'package:flutter/material.dart';

// ignore: camel_case_types
class Log_in extends StatefulWidget {
  const Log_in({super.key});
  @override
  State<Log_in> createState() => _Log_in();
}


// ignore: camel_case_types
class _Log_in extends State<Log_in> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: 1150,
              height: double.infinity,
              // ignore: avoid_unnecessary_containers
              child: Container(
                  child: Image.asset(
                "images/medicine-8287535.jpg",
                fit: BoxFit.fill,
                alignment: Alignment.center,
              )),
            ),
            Container(
              margin:const EdgeInsets.only(top: 150 , left: 150),
              child:const Text("sign in " , style: TextStyle( fontSize: 40 , color: Colors.white),),
            ),
            Container(
              decoration:const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 0,
                    blurRadius: 5,
                  )
                ],
              ),
              margin:const EdgeInsets.only(top: 420 , left: 50 , right: 50),
              child: TextField(
                enabled: true,
                decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon:const Icon(Icons.key),
                    prefixIconColor: Colors.white,
                    fillColor: Colors.blue[400],
                    filled: true,
                    border:const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide:const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder:const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    )),
              ),
            ),
            Container(
              decoration:const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 0,
                    blurRadius: 5,
                  )
                ],
              ),
              margin:const EdgeInsets.only(top: 340 , left: 50 , right: 50),
              
              child: TextField(
                enabled: true,
                decoration: InputDecoration(
                    hintText: "email",
                    prefixIcon:const Icon(Icons.email),
                    prefixIconColor: Colors.white,
                    fillColor: Colors.blue[400],
                    filled: true,
                    border:const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide:const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    enabledBorder:const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    )),
              ),
            ),

            Container(
              width: 150,
             decoration: BoxDecoration(
               color: Colors.white,
              borderRadius: BorderRadius.circular(20)
              
             ),
              margin:const EdgeInsets.only(top: 550 , left: 140),
              child: MaterialButton(onPressed: (){} , child:const Text("log in" , style: TextStyle(fontSize: 25 , color: Colors.blue),),),
            )
          ],
        ),
      ),
    );
  }
}
