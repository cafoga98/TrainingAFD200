import 'package:flutter/material.dart';

import '/core/presentation/widgets/main_appbar.dart';

class PageCount extends StatefulWidget {
  const PageCount({Key? key}) : super(key: key);

  @override
  State<PageCount> createState() => _PageCountState();
}

class _PageCountState extends State<PageCount> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context: context, nameView: 'Ejercicio de contador'),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador",
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyMedium,
            ),
            Text(
              count.toString(),
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: multipleButton(),
    );
  }

  Widget multipleButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: UniqueKey(),
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
        ),
        const SizedBox(height: 8,),
        FloatingActionButton(
          backgroundColor: count != 0 ? Theme
              .of(context).primaryColor : Theme
              .of(context).primaryColorLight,
          heroTag: UniqueKey(),
          child: const Icon(Icons.remove),
          onPressed: count != 0 ? () {
            setState(() {
              count -= 1;
            });
          } : null,
        ),
        const SizedBox(height: 8,),
        FloatingActionButton(
          heroTag: UniqueKey(),
          child: const Icon(Icons.cleaning_services_rounded),
          onPressed: () {
            setState(() {
              count = 0;
            });
          },
        ),
        const SizedBox(height: 8,),
      ],
    );
  }
}
