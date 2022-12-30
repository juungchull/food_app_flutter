import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: () {}, child: Text('Add')),
    );
  }
}
