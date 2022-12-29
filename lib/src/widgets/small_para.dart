// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SmallPara extends StatelessWidget {
  final String text;
  const SmallPara({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }
}
