import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
/// This Widget is the main application widget.  
class MyApp extends StatelessWidget {  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: MyContainerWidget(),  
    );  
  }  
}  
  
class MyContainerWidget extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text("Flutter Container Example"),  
        ),  
        body: Container(  
          width: double.infinity,  
          height: 150.0,  
          color: Colors.green,  
          margin: EdgeInsets.all(25),  
          padding: EdgeInsets.all(35),  
          alignment: Alignment.center,  
          transform: Matrix4.rotationZ(0.1),  
          child: Text("Hello! I am in the container widget!!",  
              style: TextStyle(fontSize: 25)),  
        ),  
      ),  
    );  
  }  
}  

