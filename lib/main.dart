import 'package:flutter/material.dart';
import 'package:grilles/core/constant/styles/text_styles.dart';
import 'package:grilles/core/presentation/home_page.dart';
import 'package:grilles/count/presentation/pages/page_count.dart';
import 'package:grilles/grilles/presentation/pages/page_grilles.dart';
import 'package:grilles/pizzeria/presentation/pages/bill.dart';
import 'package:grilles/pizzeria/presentation/pages/menu.dart';
import 'package:grilles/pizzeria/presentation/pages/order_here.dart';
import 'package:grilles/pizzeria/presentation/pages/pizzeria_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorLight: Colors.blue.shade200,
        primaryColorDark: Colors.blueAccent,
        textTheme: TextStyles.mainTextTheme,
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
          elevation: 2,
          titleTextStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/grilles': (context) => const PageGrilles(),
        '/count': (context) => const PageCount(),
        '/pizzeria': (context) => const PizzeriaPage(),
        '/menuPizza': (context) => const Menu(),
        '/order': (context) => const OrderHere(),
        '/bill': (context) => const Bill(),
      },
    );
  }
}

