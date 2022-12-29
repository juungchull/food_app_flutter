import 'package:flutter/material.dart';

class Hamburger extends StatelessWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Hamburger',
          ),
        ),
      ),
    );
  }
}
