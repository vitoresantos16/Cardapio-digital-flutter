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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 176, 28, 18)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(title: 'Cardápio Outbéqui'),
        '/plates': (context) => const Plates(title: 'Pratos'),
        '/drinks': (context) => const Drinks(title: 'Bebidas'),
      }
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 176, 28, 18),
        title: Center(
          child: Text(widget.title, style: TextStyle(color: Colors.white))
        ),
      ),
      body: Padding( 
        padding: EdgeInsets.only(top: 40, bottom: 30),
      
        child: Padding(padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      backgroundColor: Color.fromARGB(255, 176, 28, 18)
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/plates');
                    },
                    child: Text('Pratos', style: TextStyle(fontSize: 20, color: Colors.white))
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      backgroundColor: Color.fromARGB(255, 176, 28, 18)
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/drinks');
                    },
                    child: Text('Bebidas', style: TextStyle(fontSize: 20, color: Colors.white))
                  ),
                ],
              ),
            ],
          )
        ,)
      )
    );
  }
}


class Plates extends StatefulWidget {
  const Plates({super.key, required this.title});

  final String title;
  @override
  State<Plates> createState() => _PlatesState();
}

class _PlatesState extends State<Plates> {

  List<String> produtos = [
    'Bloomin Onion',
    'Kookaburra Wings',
    'Ribs On The Barbie',
    'Alice Springs Chicken',
    'New York Strip Steak',
    'Junior Ribs',
    'Grilled Salmon',
    'Caesar Salad'
  ];

  List<String> precos = [
    '66.90',
    '79.90',
    '89.90',
    '74.90',
    '119.90',
    '78.90',
    '89.90',
    '35.00'
  ];

  List<String> imagens = [
    'assets/images/bloomin_onion.jpg',
    'assets/images/kookaburra_wings.jpg',
    'assets/images/ribs_barbie.jpg',
    'assets/images/alice_springs.jpg',
    'assets/images/strip_steak.jpg',
    'assets/images/junior_ribs.jpg',
    'assets/images/grilled_salmon.jpg',
    'assets/images/caesar_salad.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 176, 28, 18),
        title: Center(
          child: Text(widget.title, style: TextStyle(color: Colors.white))
        ),
      ),
      body: Padding( 
        padding: EdgeInsets.only(top: 20, bottom: 20),

        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                children: [
                  ...List.generate(produtos.length, (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 180, width: 180, color: Colors.black12, child: Image.asset(imagens[index])),
                        SizedBox(height: 10,),
                        Text(produtos[index], style: TextStyle(fontSize: 18)),
                        Text('R\$ ${precos[index]}', style: TextStyle(fontSize: 18)),
                      ],
                    );
                  }),
                ]
              ),
            ),
          ],
        ),
      )
    );
  }
}

class Drinks extends StatefulWidget {
  const Drinks({super.key, required this.title});

  final String title;
  @override
  State<Drinks> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {

  List<String> produtos = [
    'Pink Lemonade',
    'Iced Tea',
    'Refrigerante (500ml)',
    'Suco natural',
    'Água com gás (400ml)',
    'Água sem gás (400ml)',
    'Heineken Long Neck',
    "Jack Daniel's"
  ];

  List<String> precos = [
    '14.90',
    '12.90',
    '13.90',
    '15.90',
    '8.90',
    '7.90',
    '18.90',
    '29.90'
  ];

  List<String> imagens = [
    'assets/images/pink_lemonade.jpg',
    'assets/images/iced_tea.jpg',
    'assets/images/refrigerante.jpg',
    'assets/images/suco.jpg',
    'assets/images/agua_gas.jpg',
    'assets/images/agua_sem_gas.jpg',
    'assets/images/heineken.jpg',
    'assets/images/jack_daniels.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 176, 28, 18),
        title: Center(
          child: Text(widget.title, style: TextStyle(color: Colors.white))
        ),
      ),
      body: Padding( 
        padding: EdgeInsets.only(top: 40, bottom: 70),

        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                children: [
                  ...List.generate(produtos.length, (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 180, width: 180, color: Colors.black12, child: Image.asset(imagens[index])),
                        SizedBox(height: 10,),
                        Text(produtos[index], style: TextStyle(fontSize: 18)),
                        Text('R\$ ${precos[index]}', style: TextStyle(fontSize: 18)),
                      ],
                    );
                  }),
                ],
              ),
            )
          ]
        )
      )
    );
  }
}
