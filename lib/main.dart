import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Submit';
  int currentIndex = 0;

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
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print('I am awesome');
                    setState(() {
                      buttonName = 'Submitted';
                    });
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(onPressed: (){

                },
                    child: Text('I am pretty'),
                )
              ],
            ),
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
          currentIndex:currentIndex,
          onTap: (int index){
            setState(() {
            currentIndex = index;
            });
          },
        ),
  ),
    );
  }
}
