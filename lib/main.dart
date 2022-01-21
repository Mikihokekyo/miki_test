import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => const MainPage(),
        '/subpage': (BuildContext context) => const SubPage()
      },
    );
  }
}



class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Navigator'),
          actions: const [Icon(Icons.add_shopping_cart_sharp)],
      ),
      body:  Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('Main'),
              ElevatedButton(onPressed: () => Navigator.of(context).pushNamed("/subpage"), child: const Text('Subページへ'),)
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('Sub'),
              ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: const Text('戻る'),)
            ],
          ),
        ),
      ),
    );
  }
}




