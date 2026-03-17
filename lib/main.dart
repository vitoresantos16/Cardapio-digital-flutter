import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 238, 29, 64)),
      ),
      home: const MyHomePage(title: 'Outbéqui Steiquirrause'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title)
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 125, height: 125, color: Colors.blue,),
              Text('Comida 1')
            ]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 125, height: 125, color: Colors.blue,),
              Text('Comida 2')
            ]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 125, height: 125, color: Colors.blue,),
              Text('Comida 3')
            ]
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 125, height: 125, color: Colors.blue,),
              Text('Comida 4')
            ]
          ),
        ],
      )
    );
  }
}
