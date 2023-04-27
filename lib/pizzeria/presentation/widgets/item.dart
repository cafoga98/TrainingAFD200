import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String flavor;
  final String price;
  final String description;
  final VoidCallback? onPressed;

  const Item({
    Key? key,
    required this.flavor,
    required this.price,
    required this.description,
    this.onPressed
  }) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          '${widget.flavor} - \$${widget.price}',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
        Text(
          widget.description,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        ElevatedButton(
          onPressed: widget.onPressed,
          child: const Text(
            'Agregar',
          ),
        )
      ],
    );
  }
}
