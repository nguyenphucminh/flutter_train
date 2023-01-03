import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
main(){
  runApp(
        //Nhà Phân Phối ChangeNotifierProvider sẽ kết nối Nhà Cung Cấp CounterProvider Và Người Sử Dụng MaterialApp
        ChangeNotifierProvider(
        create: (_)=> CounterProvider(),
        child: MaterialApp(
          home: CounterHome(),
        ),
      )
  );
}
//Nhà Cung Cấp
class CounterProvider extends ChangeNotifier{
  int _counter = 100 ;
  int get counter => _counter;
  void add(){
    _counter ++;
    notifyListeners();
  }
}
class CounterHome extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text(
          context.watch<CounterProvider>().counter.toString(),
          style: const TextStyle(fontSize: 50),
        )),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: (){
          context.read<CounterProvider>().add();
        }),
    );
  }
}