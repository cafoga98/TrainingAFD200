import 'package:flutter/material.dart';
import 'package:grilles/pizzeria/models/pizzeria_model.dart';

class CardPizzeria extends StatefulWidget {
  final PizzeriaModel pizzeriaModel;

  const CardPizzeria({Key? key, required this.pizzeriaModel}) : super(key: key);

  @override
  State<CardPizzeria> createState() => _CardPizzeriaState();
}

class _CardPizzeriaState extends State<CardPizzeria> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        widget.pizzeriaModel.route,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.pizzeriaModel.image),
            opacity: 50,
            colorFilter: const ColorFilter.mode(
              Colors.black54,
              BlendMode.colorBurn,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0.9, 0.3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(widget.pizzeriaModel.title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
