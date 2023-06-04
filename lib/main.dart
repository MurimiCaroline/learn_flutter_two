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

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppExt ()
    );
  }
}

class MyAppExt extends StatefulWidget {
  const MyAppExt({Key? key}) : super(key: key);

  @override
  State<MyAppExt> createState() => _MyAppExtState();
}

class _MyAppExtState extends State<MyAppExt> {
  String buttonName = 'Submit';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saturday'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: currentIndex == 0 ? Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.lightBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blueGrey, //color of text
                  backgroundColor: Colors.orangeAccent, // color of button
                ),
                onPressed: () {
                  // ignore: avoid_print
                  print('I am awesome');
                  setState(() {
                    buttonName = 'Submitted';
                  });
                },
                child: Text(buttonName),
              ),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>
                const NextPage(),
                ),
                );
              },
                child: Text('Next Page'),
              )
            ],
          ),
        ) : Image.network('https://pbs.twimg.com/media/E2t_LUeWEAAflHD?format=jpg&name=small'),
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
    );
  }
}


class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
    );
  }
}

