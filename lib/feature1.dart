import 'package:flutter/material.dart';

class Feature1 extends StatelessWidget {
  final input;
  Feature1({this.input});
  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
