import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({Key? key, required this.text, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0, right: 10.0, top:10.0),
      child: MaterialButton(
        onPressed: onPressed,
        child:Text(text),
        color: Colors.yellow,
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
