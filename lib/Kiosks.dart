import 'package:flutter/material.dart';

class Kiosks extends StatefulWidget {
  const Kiosks({super.key});

  @override
  State<Kiosks> createState() => _KiosksState();
}

class _KiosksState extends State<Kiosks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            children: [
              Icon(Icons.menu),
              SizedBox(
                width: 100,
              ),
              Text(
                'ColaStation-Supervisor',
              ),
              SizedBox(
                width: 40,
              ),
              Image.asset(
                'cola.png',
                height: 100,
                width: 100,
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Container(
            child: Card(
              shape: ,
          child: Column(
            children: [
              Image.asset('Coke.jpg'),
              Text(
                'Kiosk Code: 0123',
              )
            ],
          ),
        )),
      ),
    );
  }
}
