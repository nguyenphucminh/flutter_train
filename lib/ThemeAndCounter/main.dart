import 'package:flutter/material.dart';
import 'package:flutter_trainning/Column.dart';
import 'package:provider/provider.dart';
import 'package:flutter_trainning/MangageState_Provider/CounterApp.dart';
import 'package:flutter_trainning/ThemeAndCounter/mainsetting.dart';
main(){
  runApp(MultiProvider(
    providers: [
    ChangeNotifierProvider(create: (_)=> MySettingProvider()),
    ChangeNotifierProvider(create: (_)=> CounterProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Multi Provider",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: context.watch<MySettingProvider>().isDart ? Brightness.dark: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),     
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Provider'),
        actions: [
          Switch(
            value: context.watch<MySettingProvider>().isDart, 
            onChanged: (newValue){
              // Provider.of<MySettingProvider>(context, listen: true).setBrightness(newValue);
              context.read<MySettingProvider>().setBrightness(newValue);
          })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text('You have pushed the button this many times: '),
             Text(  
              context.watch<CounterProvider>().counter.toString(),
              style: const TextStyle(fontSize: 50)),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), 
        onPressed: (){
          context.read<CounterProvider>().add();
        },
      ),
    );
  }
}