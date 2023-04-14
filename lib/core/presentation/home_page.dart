import 'package:flutter/material.dart';
import 'package:grilles/core/presentation/widgets/main_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                "Certificación AFD-200",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const Divider(),
              MainButton(
                mainText: '1. Ejercicio de grillas',
                onPressed: () => Navigator.pushNamed(context, '/grilles'),
              ),
              MainButton(
                mainText: '2. Ejercicio Contador',
                onPressed: () => Navigator.pushNamed(
                  context,
                  '/count',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
