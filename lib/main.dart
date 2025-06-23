import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        dividerColor: Colors.white24,
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 32, 32, 32),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            // ignore: deprecated_member_use
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('CryptoCurrenciesList')),

      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 15,
        itemBuilder: (context, index) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/bitcoin_logo.svg',
            height: 30,
            width: 30,
          ),
          title: Text('Bitcoin', style: theme.textTheme.bodyMedium),
          subtitle: Text('101 689,10\$', style: theme.textTheme.labelSmall),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
