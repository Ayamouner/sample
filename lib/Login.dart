// ignore: file_names
// ignore: file_names
import 'dart:html';

//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sample/NewTab.dart';

import 'package:sample/Secondp.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'ColaStationSupervisor', //style: TextStyle( fontFamily: ),
        ),
        centerTitle: true,
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: 4)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'cola.png',
                height: 200,
                width: 200,
              ),
              Text(
                'Login',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 20,
              ),
              //  AssetImage('C:\Users\aya.mouner\sample\Assets\Cola.png')
              //CachedNetworkImage(
              //imageUrl:
              //'https://dwglogo.com/wp-content/uploads/2016/03/1500px_Coca_Cola_logo-1068x735.png'),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text('Enter Your ID'),
                ),

                /* keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                  signed: false,
                ),*/
              ),
              SizedBox(height: 12),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  label: Text('Enter Your Password'),
                ),
                /* keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                  signed: false,
                ),*/
              ),
              SizedBox(height: 12),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => NewTab())));
                  },
                  icon: Icon(Icons.login_rounded),
                  label: Text('Log in'))
            ],
          ),
        ),
      )),
    ));
  }
}
