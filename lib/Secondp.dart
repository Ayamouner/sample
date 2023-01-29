import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample/main.dart';

class Secondp extends StatefulWidget {
  const Secondp({super.key});

  @override
  State<Secondp> createState() => _SecondState();
}

class _SecondState extends State<Secondp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var newBool;
    var val;
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
            body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(children: [
                      Text(
                        ' Please Fill The Visit Form ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(width: 4)),
                        padding: EdgeInsets.all(16),
                        child: Column(children: [
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(20.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "-Select Kiosk Code-",
                                fillColor: Color.fromARGB(255, 207, 180, 178)),
                            value: val,
                            onChanged: (v) {},
                            items: [
                              DropdownMenuItem(
                                  child: Text('-Select Kiosk Code-'),
                                  value: '-1'),
                              DropdownMenuItem(child: Text('O123'), value: '1'),
                              DropdownMenuItem(child: Text('K123'), value: '2'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            enabled: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              label: Text('Street'),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            enabled: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              label: Text('Operator'),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(20.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "-Select Maintenance Type-",
                                fillColor: Color.fromARGB(255, 207, 180, 178)),
                            value: val,
                            onChanged: (v) {},
                            items: [
                              DropdownMenuItem(
                                  child: Text('-Select Maintenance Type-'),
                                  value: '-1'),
                              DropdownMenuItem(
                                  child: Text('Type 1'), value: '1'),
                              DropdownMenuItem(
                                  child: Text('Type 2'), value: '2'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(20.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "-Select Kiosk Status-",
                                fillColor: Color.fromARGB(255, 207, 180, 178)),
                            value: val,
                            onChanged: (v) {},
                            items: [
                              DropdownMenuItem(
                                  child: Text('-Select Kiosk Status-'),
                                  value: '-1'),
                              DropdownMenuItem(child: Text('Open'), value: '1'),
                              DropdownMenuItem(
                                  child: Text('Close'), value: '2'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Notes ...'),
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton.icon(
                              onHover: (value) => Colors.black,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              onPressed: () {},
                              icon: Icon(Icons.save),
                              label: Text('Save'))

                          /*  Column(children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool!;
                                });
                              },
                              activeColor: Colors.red,
                            ),
                            Text('Cooler'),
                
                            /*DropdownButton(
                                value: Items,
                                onChanged: (newValue) {
                                  setState(() {});
                                },
                                items: [],
                              ),*/
                          ],
                        ),
                        /* SizedBox(
                                height: 10,
                              ),*/
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool!;
                                });
                              },
                              activeColor: Colors.red,
                            ),
                            Text('Electrcity'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool!;
                                });
                              },
                              activeColor: Colors.red,
                            ),
                            Text('Door Lock'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool!;
                                });
                              },
                              activeColor: Colors.red,
                            ),
                            Text('Window Lock'),
                          ],
                        ),
                      ]),
                    ])), */

                          /*     Container(
                      child: Row(
                        children: [
                          Text(
                            'Street:',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              // label: Text('Enter'),
                            ),
                          ),
                        ],
                      ),
                    ), */
                        ]),
                      )
                    ]),
                  ),
                ))));
  }
}
