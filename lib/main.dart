import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Material App',
      home: principal(),
    );
  }
}

class principal extends StatelessWidget {
  const principal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: Drawer(child: ListView
      (padding: EdgeInsets.only(top:  10), children: [
        DrawerHeader(child: Text('menu'),
        decoration: BoxDecoration(color: Colors.greenAccent),
        ),
        ListTile(leading: Icon(Icons.home),
        title: Text('Inicio '),
        ),
         ListTile(leading: Icon(Icons.storage),
        title: Text('Inventario '),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Opcion3()));
        },
        ),
         ListTile(leading: Icon(Icons.login),
        title: Text('Salir'),
        ),
      ],),),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
class Opcion3 extends StatelessWidget {
  const Opcion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('hola '));
  }
}