import 'package:flutter/material.dart';  
import 'package:flutter/gestures.dart';  
void main() { runApp(MyApp()); }  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
        home: MyHomePage()  
    );  
  }  
}  
  
class MyHomePage extends StatefulWidget {  
  @override  
  _MyHomePageState createState() => _MyHomePageState();  
}  
  
class _MyHomePageState extends State<MyHomePage> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Flutter Column Example"),  
      ),  
      body: Column(  
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment :CrossAxisAlignment.stretch, 
          children:<Widget>[  
            Container(  
              margin: EdgeInsets.all(20.0),  
              padding: EdgeInsets.all(12.0),  
              decoration:BoxDecoration(  
                  borderRadius:BorderRadius.circular(8),  
                  color:Colors.white,
                  border: Border.all(color: Colors.black)  
              ),  
              child: const Text("Hello World! This is a Text Widget.",  
                style: TextStyle(  
                  fontSize: 35,  
                  color: Colors.purple,  
                  fontWeight: FontWeight.w700,  
                  fontStyle: FontStyle.italic,  
                  letterSpacing: 8,  
                  wordSpacing: 20,  
                  backgroundColor: Colors.yellow,  
                  shadows: [  
                    Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:10)  
                  ]  
                ),  
              ), 
            ),  
            Container(  
              margin: EdgeInsets.all(20.0),  
              padding: EdgeInsets.all(12.0),  
              decoration:BoxDecoration(  
                  borderRadius:BorderRadius.circular(8),  
                  color:Colors.white,
                  border: Border.all(color: Colors.black)  
              ),  
               child: RichText(
                text: TextSpan(  
                  text: 'Don\'t have an account?',  
                  style: const TextStyle(color: Colors.black, fontSize: 20),  
                  children: <TextSpan>[  
                    TextSpan(text: ' Sign up',  
                        style: const TextStyle(color: Colors.blueAccent, fontSize: 20),  
                        recognizer: TapGestureRecognizer()  
                          ..onTap = () {}  
                    )  
                  ]  
                ),  
              ),    
            ),  
            Container(  
              margin: EdgeInsets.all(20.0),  
              padding: EdgeInsets.all(12.0),  
              decoration:BoxDecoration(  
                  borderRadius:BorderRadius.circular(8),  
                  color:Colors.white,
                  border: Border.all(color: Colors.black) 
              ),  
              child:RichText(  
                text: TextSpan(  
                  style: Theme.of(context).textTheme.bodyText1,  
                  children: [  
                    TextSpan(text: 'Click ', style: TextStyle(fontSize: 25)),  
                    WidgetSpan(  
                      child: Padding(  
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),  
                        child: Icon(Icons.add, color: Colors.red),  
                      ),  
                    ),  
                    TextSpan(text: ' to add', style: TextStyle(fontSize: 25)),  
                  ],  
                ),  
              )  
            )  
          ]  
      ),  
    );  
  }  
}
