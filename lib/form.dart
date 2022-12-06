import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MaterialApp( home: MyApp(),));  
}  
  
class MyApp extends StatefulWidget {  
  @override  
  _State createState() => _State();  
}  
// Future<void> _dialogBuilder(BuildContext context){
//   return showDialog<void>(context: context, builder: builder){
//     return AlertDialog(  
//       title: Text("Alert Message"),  
//       content: Text(nameController.text),  
//       actions: <Widget>[  
//         new FlatButton(  
//           child: new Text('OK'),  
//           onPressed: () {  
//             Navigator.of(context).pop();  
//           },  
//         )  
//       ],  
//     );  
//   }
// }
class _State extends State<MyApp> {  
  TextEditingController nameController = TextEditingController();  
  TextEditingController passwordController = TextEditingController(); 
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(  
          title: Text('Flutter TextField Example'),  
        ),  
        body: Padding(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    maxLength: 10,  
                    controller: nameController,
                    decoration: const InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ),  
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    maxLength: 4,  
                    obscureText: true,
                    controller: passwordController,  
                    decoration: const InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ),  
                ElevatedButton(
                  child: Text('Sign In'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.yellow,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.normal
                    ),
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                    shadowColor: Colors.yellow,
                    elevation: 5,
                  ),
                   onPressed: ()=>({
                       showDialog<void>(
                        context: context,  
                        builder: (context) {  
                          return AlertDialog(  
                            title: const Text("Alert Message"),  
                            // Retrieve the text which the user has entered by  
                            // using the TextEditingController.  
                            content: Text(nameController.text),  
                            actions: <Widget>[  
                              TextButton(  
                                child: const Text('OK'),  
                                onPressed: () {  
                                  Navigator.of(context).pop();  
                                },  
                              )  
                            ],  
                          );  
                        },
                      )
                    }
                  )
                ) 
              ],  
            )  
        )  
    );  
  }  
} 



