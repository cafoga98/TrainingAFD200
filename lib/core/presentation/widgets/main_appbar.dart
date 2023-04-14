import 'package:flutter/material.dart';

AppBar mainAppBar({required BuildContext context, required String nameView}) => AppBar(
      title: Text(nameView),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.home),
      ),
    );
