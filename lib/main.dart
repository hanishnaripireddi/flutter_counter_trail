import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();


}



class _MyAppState extends State<MyApp> {

  int count=0;

  void _incrementCounter(){
    setState((){
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
                "Basic Counter",
                textAlign: TextAlign.center,
              )
          ),
          backgroundColor: Colors.teal,
        ),
        body: Center(

            child: Text("Count: $count"),





        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _incrementCounter();
          },
          child: Text("+1"),
        ),



      ),
    );
  }
}

 