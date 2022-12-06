import 'dart:math';

import 'package:flutter/material.dart';
void main() => runApp(MyApp());  
class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: const Text("Scaffold Demo"),
          leading: Builder(
            builder: (context)=>IconButton(
            icon: Icon(Icons.face),
            onPressed: (){
              Scaffold.of(context).openDrawer();
             },
            )
          ),
          actions: [
            Icon(Icons.male), 
            Builder(
            builder: (context)=>IconButton(
            icon: Icon(Icons.face),
            onPressed: (){
              Scaffold.of(context).openEndDrawer();
             },
            )
          )
          ],
        ),
        drawer: Drawer(
          child: ElevatedButton(
            onPressed: (){Navigator.pop(context);}, 
            child: const Text('Ok'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
            ),
          )
        ),
        endDrawer: Drawer(
          child: ElevatedButton(
            onPressed: (){Navigator.pop(context);}, 
            child: const Text('Cancel'),
            style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)),
          )
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // direction: Axis.horizontal,
            // runSpacing: 10,
            // alignment: WrapAlignment.spaceBetween,
            children: const <Widget>[
              // Container(
              //   width: 50,
              //   height: 50,
              //   color: Colors.red,
              // )
              MyContainer(),
              Expanded(flex: 3, child:MyContainer()),
              Expanded(flex: 1, child:MyContainer()),
              Expanded(flex: 2, child:MyContainer()),
            ],
          ),
        ),
        backgroundColor: Colors.blueGrey,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.share),
          onPressed: (){},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 50,
            child: Text("HAPPY"),
          ),
        ),
      )
    );
  }
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Minh'),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             // direction: Axis.horizontal,
//             // runSpacing: 10,
//             // alignment: WrapAlignment.spaceBetween,
//             children: const <Widget>[
//               // Container(
//               //   width: 50,
//               //   height: 50,
//               //   color: Colors.red,
//               // )
//               MyContainer(),
//               Expanded(flex: 3, child:MyContainer()),
//               Expanded(flex: 1, child:MyContainer()),
//               Expanded(flex: 2, child:MyContainer()),
//             ],
//           ),
//         )
//       ) 
//     );
//   }
// }

class MyContainer extends StatelessWidget{
  const MyContainer({Key? key,}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(5),
      width: 50,
      height: 50,
      color: Colors.amber
    );
  }
}


// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter Widget Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.green
//       ),
//       home: Container(
//         child: Text("Hello", style: TextStyle(color: Colors.green[100], fontSize: 100, fontWeight: FontWeight.bold),),
//         margin: EdgeInsets.all(30),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.lightGreen
//         ),
//         transform: Matrix4.rotationZ( pi / 6),
//       )
//     );
//   }
// }

// class CounterApp extends StatefulWidget {
//   @override
//   State<CounterApp> createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Counter App')
//         ),
//         body: Center(
//           child: Text(
//             counter.toString(),
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold, 
//               color: Colors.blue[300]
//             )
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.deepPurple[200],
//           child: IconButton(
//             color: Colors.red[800],
//             icon: Icon(Icons.plus_one),
//             onPressed: (){
//               setState((){counter += 1;});
//             },
//           ),
//           onPressed: (){},
//         ),
//       )
//     );
//   }
// }