import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
main(){
  runApp(
      ChangeNotifierProvider(
        create: (_)=> CounterProvider(),
        child: MaterialApp(
          home: HomeScreen(),
        ),
      )
  );
}
class CounterProvider extends ChangeNotifier{
  int _counter = 100 ;
  int get counter => _counter;
  void add(){
    _counter ++;
    notifyListeners();
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen'), backgroundColor: Colors.red,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
          context.watch<CounterProvider>().counter.toString(),
          style: const TextStyle(fontSize: 50)),
        ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=> HomeScreen()));
          },
          child: const Text("Go to Home"))
      ],)),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<CounterProvider>().add();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'), backgroundColor: Colors.blue,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
          context.watch<CounterProvider>().counter.toString(),
          style: const TextStyle(fontSize: 50)),
        ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondScreen()));
          },
          child: const Text("Go to SecondScreen"))
      ],)),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<CounterProvider>().add();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

