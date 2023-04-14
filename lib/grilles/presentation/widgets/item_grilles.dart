import 'package:flutter/material.dart';

class ItemGrilles extends StatelessWidget {
  final String url;
  const ItemGrilles({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all()),
        child: Image.network(
          url,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;

            return const Center(
                child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
