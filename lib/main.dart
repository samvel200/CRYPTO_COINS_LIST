import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoCurrenciesList',
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: const Color.fromARGB(255, 32, 32, 32),
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CryptoCurrenciesList')),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          title: const Text('Bitcoin', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
