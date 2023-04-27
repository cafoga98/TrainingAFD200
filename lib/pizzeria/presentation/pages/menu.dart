import 'package:flutter/material.dart';
import 'package:grilles/pizzeria/presentation/widgets/item.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Menu',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.greenAccent),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Item(
              flavor: 'Margarita',
              price: '18,000',
              description: 'Queso y salsa de tomate',
            ),
            const Item(
              flavor: 'Hawaiana',
              price: '22,000',
              description: 'Queso, jamón y piña',
            ),
            const Item(
              flavor: 'Pepperoni',
              price: '22,000',
              description: 'Queso y pepperoni',
            ),
            const Item(
              flavor: 'Vegetariana',
              price: '24,000',
              description: 'Queso, champiñones, pimientos y cebolla',
            ),
            const Item(
              flavor: 'Carne',
              price: '26,000',
              description: 'Queso, carne molida, tocino y pepperoni',
            ),
            const Item(
              flavor: 'Cuatro Quesos',
              price: '28,000',
              description:
                  'Queso mozzarella, queso gorgonzola, queso parmesano y queso de cabra',
            ),
            const Item(
              flavor: 'Mexicana',
              price: '28,000',
              description:
                  'Queso, carne molida, jalapeños, pimientos y salsa de tomate picante ',
            ),
          ],
        ),
      ),
    );
  }

}