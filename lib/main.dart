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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Plates(title: 'Outbéqui Steiquirrause'),
        '/drinks': (context) => const Drinks(title: 'Pratos'),
      }
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

  List produtos = [
    'Bloomin Onion',
    'Super Wings',
    'Big Five Boomerang',
    'Ribs on the Barbie',
    'Grilled Fish',
    'Homestead Steak',
    'Caesar Salad',
    'El Ranchito'
  ];

  List precos = [
    '49.99',
    '69.99',
    '79.99',
    '85.99',
    '69.99',
    '59.99',
    '39.99',
    '35.99'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title)
        ),
      ),
      body: Padding( 
        padding: EdgeInsets.only(top: 40, bottom: 30),

        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[0], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[0]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[1], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[1]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[2], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[2]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[3], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[3]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[4], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[4]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[5], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[5]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[6], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[6]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[7], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[7]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  )
                ]
              ),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 50),
                backgroundColor: Colors.blue
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/drinks');
              },
              child: Text('Bebidas', style: TextStyle(fontSize: 20, color: Colors.white))
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

  List produtos = [
    'Bloomin Onion',
    'Super Wings',
    'Big Five Boomerang',
    'Ribs on the Barbie',
    'Grilled Fish',
    'Homestead Steak',
    'Caesar Salad',
    'El Ranchito'
  ];

  List precos = [
    '49.99',
    '69.99',
    '79.99',
    '85.99',
    '69.99',
    '59.99',
    '39.99',
    '35.99'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title)
        ),
      ),
      body: Padding( 
        padding: EdgeInsets.only(top: 40, bottom: 30),

        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[0], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[0]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[1], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[1]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[2], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[2]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[3], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[3]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[4], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[4]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[5], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[5]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[6], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[6]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Container(width: 160, height: 160, color: Colors.lightBlueAccent,
                      child: Icon(Icons.fastfood, size: 50,),
                      ),
                      Column(
                        children: [
                          Text(produtos[7], style: TextStyle(fontSize: 24)),
                          Text('R\$ ${precos[7]}', style: TextStyle(fontSize: 20))
                        ],
                      )
                    ]
                  )
                ]
              ),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 50),
                backgroundColor: Colors.blue
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Pratos', style: TextStyle(fontSize: 20, color: Colors.white))
            ),
          ],
        ),
      )
    );
  }
}
