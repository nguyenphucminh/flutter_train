import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text("Icon Button Example"),  
        ),  
        body: Center(  
          child: MyStatefulWidget(),  
        ),  
      ),  
    );  
  }  
}  
double _speakervolume = 0.0;  
  
class MyStatefulWidget extends StatefulWidget {  
  MyStatefulWidget({Key ? key}) : super(key: key);  
  
  @override  
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();  
}  
  
class _MyStatefulWidgetState extends State<MyStatefulWidget> {  
  Widget build(BuildContext context) {  
    return Column(  
      mainAxisSize: MainAxisSize.min,  
      children: <Widget>[  
        IconButton(  
          icon: Icon(Icons.volume_up),  
          iconSize: 50,  
          color: Colors.brown,  
          tooltip: 'Increase volume by 5',  
          onPressed: () {  
            setState(() {  
              _speakervolume += 5;  
            });  
          },  
        ),  
        Text('Speaker Volume: $_speakervolume')  
      ],  
    );  
  }  
} 