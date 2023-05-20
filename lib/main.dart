import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  String buttonName = 'Click';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
      title: const Text('Saturday'),
        backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print('I am awesome');
            },
            child: Text(buttonName),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:  const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
  ),
    );
  }
}
