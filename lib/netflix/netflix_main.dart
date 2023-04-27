import 'package:flutter/material.dart';
import 'package:grilles/netflix/dashboard/home/presentation/pages/home_page.dart';

void main() {
  runApp(const NetflixApp());
}

class NetflixApp extends StatelessWidget {
  const NetflixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
        primaryColor: const Color(0xFFE50914),
        primaryColorLight: const Color(0xFFE50914),
        primaryColorDark: const Color(0xFFB20710),
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54),
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: Colors.white),
          bodySmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300, color: Colors.white),
          titleSmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.black38,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeNetflixPage(),
        //'/grilles': (context) => const PageGrilles(),
        //'/count': (context) => const PageCount(),
      },
    );
  }
}
