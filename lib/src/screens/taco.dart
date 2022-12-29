import 'package:flutter/material.dart';

class Taco extends StatelessWidget {
  const Taco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Taco',
          ),
        ),
      ),
    );
  }
}
