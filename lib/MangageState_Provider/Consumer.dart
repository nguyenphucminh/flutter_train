import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
main(){
  runApp(
      ChangeNotifierProvider(
        create: (_)=> MyProvider(),
        child: MaterialApp(
          home: HomeScreen(),
        ),
      )
  );
}
class MyProvider extends ChangeNotifier{
  String text = 'Hello' ;
  Color color = Colors.red;

  void changeText(){
    if(text == "Hello"){
      text = "Minh";
    }
    else{
      text = "Hello";
    }
    notifyListeners();
  }
  void changeColor(){
    if(color == Colors.red){
      color = Colors.blue;
    }else{
      color = Colors.red;
    }
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, myProvider, child){
        return Scaffold(
          appBar: AppBar(title: const Text("Provider Demo"), backgroundColor: myProvider.color,),
          drawer: Drawer(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    myProvider.changeColor();
                    Navigator.pop(context);
                  }, child: const Text("Change Color")),
                  ElevatedButton(onPressed: (){
                    myProvider.changeText();
                    Navigator.pop(context);
                  }, child: const Text("Change Text")),
                ],
              )
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  myProvider.changeText();
                }, child: const Text("Change Text")),
                Text('${myProvider.text}')
              ],
          )),
        );
      }
    );
  }
}


