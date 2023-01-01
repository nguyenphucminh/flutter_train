import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatefulWidget {  
  @override  
  _MyAppState createState() => _MyAppState();  
}  
  
class _MyAppState extends State<MyApp> {  
  int _volume = 0;  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('InkWell Button Example'),  
        ),  
        body: Center(  
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,  
            children: <Widget>[  
              InkWell(  
                splashColor: Colors.green,  
                highlightColor: Colors.blue,  
                child: Icon(Icons.ring_volume, size: 50),  
                onTap: () {  
                  setState(() {  
                    _volume += 2;  
                  });  
                },  
              ),  
              Text (  
                  _volume.toString(),  
                  style: TextStyle(fontSize: 50)  
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}  