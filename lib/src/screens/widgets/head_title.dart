import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  const HeadTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.46,
      color: Colors.green,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(),
                CircleAvatar(),
              ],
            ),
          ),
          Positioned(
            left: 17,
            bottom: 5,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.27,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 50,
            top: MediaQuery.of(context).size.height * 0.14,
            child: Container(
              child: CircleAvatar(
                radius: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}