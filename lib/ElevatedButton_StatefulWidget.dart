import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MyApp());  
}  
  
class MyApp extends StatefulWidget {  
  @override  
  State<MyApp> createState() => _MyAppState();  
}  
class _MyAppState extends State<MyApp> {  
  String msg = 'Flutter RaisedButton Example';  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('Flutter RaisedButton Example'),  
        ),  
        body: Container(  
          child: Center(  
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.center,  
              children: [  
                Text(msg, style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),),  
                ElevatedButton(  
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.amber,
                    backgroundColor: Colors.black
                  ),
                  child: Text("Click Here", style: TextStyle(fontSize: 20),),  
                  onPressed: _changeText,  
                )  
              ],  
            ),  
          ),  
        ),  
      ),  
    );  
  }  
  _changeText() {  
    setState(() {  
      if (msg.startsWith('F')) {  
        msg = 'We have learned FlutterRaised button example.';  
      } else {  
        msg = 'Flutter RaisedButton Example';  
      }  
    });  
  }  
} 