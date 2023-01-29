import 'package:flutter/material.dart';
import 'package:sample/Kiosks.dart';
import 'package:sample/Secondp.dart';

class NewTab extends StatefulWidget {
  const NewTab({super.key});

  @override
  State<NewTab> createState() => _NewTabState();
}

class _NewTabState extends State<NewTab> {
  int CurrIndex = 0;
  final tabs = [Kiosks(), Secondp()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: CurrIndex,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Kiosks'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.check), label: 'Viseted Kiosks')
              ],
              onTap: (index) {
                setState(() {
                  CurrIndex = index;
                });
              },
            ),
            body: tabs[CurrIndex]));
  }
}
