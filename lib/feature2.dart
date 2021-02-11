import 'package:flutter/material.dart';

class Feature2 extends StatelessWidget {
  final input;
  Feature2({this.input});
  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
