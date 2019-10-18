import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  Future<void> _neverStisfield() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Rewind and remember'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You will never be statisfied'),
                Text('You like me i never statisfied'),
              ],
            ),
          ),

          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('taotaotao'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'show tip',
            onPressed: () {
              _neverStisfield();
            },
          ),
        ],
      ),
      body: null,
    );
  }

}


//Scaffold(
//appBar: AppBar(
//title: const Text('Sample Code'),
//),
//body: Center(
//child: Text('You have pressed the button $_count times'),
//),
//bottomNavigationBar: BottomAppBar(
//shape: const CircularNotchedRectangle(),
//child: Container(height: 50.0,),
//),
//backgroundColor: Colors.blueGrey.shade200,
//floatingActionButton: FloatingActionButton(
//onPressed: () => setState(() => _count++),
//tooltip: 'Increment Counter',
//child: const Icon(Icons.add),
//),
//floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//);
//}

//Future<void> _neverStisfield() async {
//  return showDialog<void>(
//    context: context,
//    barrierDismissible: false,
//    builder: (BuildContext context) {
//      return AlertDialog(
//        title: Text('Rewind and remember'),
//        content: SingleChildScrollView(
//          child: ListBody(
//            children: <Widget>[
//              Text('You will never be statisfied'),
//              Text('You like me i never statisfied'),
//            ],
//          ),
//        ),
//
//        actions: <Widget>[
//          FlatButton(
//            child: Text('Regret'),
//            onPressed: () {
//              Navigator.of(context).pop();
//            },
//          ),
//        ],
//      );
//    },
//  );
//}
