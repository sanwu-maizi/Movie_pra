import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A movie app demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('电影列表'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('麦子'),
              accountEmail: Text('abc@qq.com'),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: AssetImage('images/3.jpg')),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.7,
                      fit: BoxFit.cover,
                      image: AssetImage('images/backimage1.png'))),
            )
          ],
        ),
      ),
    );
  }
}
