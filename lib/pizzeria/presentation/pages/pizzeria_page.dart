import 'package:flutter/material.dart';
import 'package:grilles/pizzeria/models/pizzeria_model.dart';
import 'package:grilles/pizzeria/presentation/widgets/card_pizzeria.dart';

List<PizzeriaModel> menu = [
  PizzeriaModel(
    title: 'Ordenar',
    image: 'assets/img/order.png',
    route: '/order',
  ),
  PizzeriaModel(
    title: 'Menu',
    image: 'assets/img/order.png',
    route: '/menuPizza',
  ),
  PizzeriaModel(
    title: 'Salir',
    image: 'assets/img/order.png',
    route: '/pizzeria',
  )
];

class PizzeriaPage extends StatefulWidget {
  const PizzeriaPage({Key? key}) : super(key: key);

  @override
  State<PizzeriaPage> createState() => _PizzeriaPageState();
}

class _PizzeriaPageState extends State<PizzeriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset('assets/img/pizzeria.png'),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            child: GridView.count(
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              children: List.generate(3, (index) {
                return CardPizzeria(pizzeriaModel: menu[index]);
              }),
            ),
          )
        ],
      ),
    );
  }
}
