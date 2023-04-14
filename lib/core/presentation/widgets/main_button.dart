import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String mainText;
  final VoidCallback? onPressed;
  final Color? colorBackGround;
  final TextStyle? textStyle;

  const MainButton(
      {Key? key,
      required this.mainText,
      this.onPressed,
      this.colorBackGround,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Center(
        child: Text(mainText),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(colorBackGround ?? Colors.blue),
        textStyle: MaterialStateProperty.all(
          Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
