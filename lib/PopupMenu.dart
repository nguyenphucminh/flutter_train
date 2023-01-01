import 'package:flutter/material.dart';  
  
void main() { runApp(MyApp());}  
  
class MyApp extends StatefulWidget {  
  @override  
  _MyAppState createState() => _MyAppState();  
}  
  
class _MyAppState extends State<MyApp> {  
  Choice _selectedOption = choices[0];  
  
  void _select(Choice choice) {  
    setState(() {  
      _selectedOption = choice;  
    });  
  }  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: const Text('PopupMenu Button Example'),  
          actions: <Widget>[  
            PopupMenuButton<Choice>(  
              offset: const Offset(0, -90),
              onSelected: _select,  
              itemBuilder: (BuildContext context) {  
                return choices.skip(0).map((Choice choice) {  
                  return PopupMenuItem<Choice>(  
                    value: choice,  
                    child: Text(choice.name),  
                  );  
                }).toList();  
              },  
            ),  
          ],  
        ),  
        body: Padding(  
          // padding: const EdgeInsets.all(10.0),  
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 13.0, right: 13.0),
          child: ChoiceCard(choice: _selectedOption),  
        ),  
      ),  
    );  
  }  
}  
  
class Choice {  
  const Choice({ required this.name, required this.icon});  
  final String name;  
  final IconData icon;  
}  
  
const List<Choice> choices =  <Choice>[  
   Choice(name: 'Wi-Fi', icon: Icons.wifi),  
   Choice(name: 'Bluetooth', icon: Icons.bluetooth),  
   Choice(name: 'Battery', icon: Icons.battery_alert),  
   Choice(name: 'Storage', icon: Icons.storage),  
];  
  
class ChoiceCard extends StatelessWidget {  
  const ChoiceCard({Key? key,required this.choice}) : super(key: key);  
  
  final Choice choice;  
  
  @override  
  Widget build(BuildContext context) {  

    return Card(  
      color: Colors.greenAccent,  
      child: Center(  
        child: Column(  
          mainAxisSize: MainAxisSize.min,  
          crossAxisAlignment: CrossAxisAlignment.center,  
          children: <Widget>[  
            Icon(choice.icon, size: 115.0, color: Colors.amber),  
            Text(choice.name, style: Theme.of(context).textTheme.headline1,),  
          ],  
        ),  
      ),  
    );  
  }  
}  