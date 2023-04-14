import 'package:flutter/material.dart';

import '/core/presentation/widgets/main_appbar.dart';
import '/grilles/presentation/widgets/item_grilles.dart';


class PageGrilles extends StatefulWidget {
  const PageGrilles({Key? key}) : super(key: key);

  @override
  State<PageGrilles> createState() => _PageGrillesState();
}


class _PageGrillesState extends State<PageGrilles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context: context, nameView: 'Ejercicio de grilla'),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Row(
              children: const [
                ItemGrilles(url: 'https://picsum.photos/250?image=1'),
                ItemGrilles(url: 'https://picsum.photos/250?image=2'),
                ItemGrilles(url: 'https://picsum.photos/250?image=3'),
              ],
            ),
            Row(
              children: const [
                ItemGrilles(url: 'https://picsum.photos/250?image=4'),
                ItemGrilles(url: 'https://picsum.photos/250?image=5'),
                ItemGrilles(url: 'https://picsum.photos/250?image=6'),
              ],
            ),
            Row(
              children: const [
                ItemGrilles(url: 'https://picsum.photos/250?image=7'),
                ItemGrilles(url: 'https://picsum.photos/250?image=8'),
                ItemGrilles(url: 'https://picsum.photos/250?image=10'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
