import 'package:flutter/material.dart';
import 'package:grilles/pizzeria/presentation/widgets/item.dart';

class OrderHere extends StatefulWidget {
  const OrderHere({Key? key}) : super(key: key);

  @override
  State<OrderHere> createState() => _OrderHereState();
}

class _OrderHereState extends State<OrderHere> {
  double totalBill = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Ordena Aqui',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.white),
            ),
          ),
          Item(
            flavor: 'Margarita',
            price: '18.000',
            description: 'Queso y salsa de tomate',
            onPressed: () {
              setState(() {
                totalBill += 18.000;
              });
            },
          ),
          Item(
            flavor: 'Hawaiana',
            price: '22.000',
            description: 'Queso, jamón y piña',
            onPressed: () {
              setState(() {
                totalBill += 22.000;
              });
            },
          ),
          Item(
            flavor: 'Pepperoni',
            price: '22.000',
            description: 'Queso y pepperoni',
            onPressed: () {
              setState(() {
                totalBill += 22.000;
              });
            },
          ),
          Item(
            flavor: 'Vegetariana',
            price: '24.000',
            description: 'Queso, champiñones, pimientos y cebolla',
            onPressed: () {
              setState(() {
                totalBill += 24.000;
              });
            },
          ),
          Item(
            flavor: 'Carne',
            price: '26.000',
            description: 'Queso, carne molida, tocino y pepperoni',
            onPressed: () {
              setState(() {
                totalBill += 26.000;
              });
            },
          ),
          Item(
            flavor: 'Cuatro Quesos',
            price: '28.000',
            description:
                'Queso mozzarella, queso gorgonzola, queso parmesano y queso de cabra',
            onPressed: () {
              setState(() {
                totalBill += 28.000;
              });
            },
          ),
          Item(
            flavor: 'Mexicana',
            price: '28.000',
            description:
                'Queso, carne molida, jalapeños, pimientos y salsa de tomate picante ',
            onPressed: () {
              setState(() {
                totalBill += 28.000;
              });
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Total Facturado',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
          const Divider(
            color: Colors.white,
          ),
          Text(
            'Valor a pagar: \$${totalBill.toString()}00',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Pagar',
            ),
          ),
        ],
      ),
    );
  }
}
