import 'package:flutter/material.dart';

class FakeBloc implements Event {
  @override
  reset(
      {required BuildContext ctx,
      required StateSetter setState,
      required int squaresCant}) {
    // TODO: implement reset
    throw UnimplementedError();
  }

  @override
  showGrilles(
      {required BuildContext ctx,
      required StateSetter setState,
      required int squaresCant}) {
    // TODO: implement showGrilles
    throw UnimplementedError();
  }
}

class Event {
  showGrilles(
      {required BuildContext ctx,
      required StateSetter setState,
      required int squaresCant}) {}

  reset(
      {required BuildContext ctx,
      required StateSetter setState,
      required int squaresCant}) {}
}
