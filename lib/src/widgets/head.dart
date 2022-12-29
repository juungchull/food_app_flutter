import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  const Head({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  )
                ],
              ),
              Text(
                '23 Leta Pike, New Hampshire',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://plus.unsplash.com/premium_photo-1661497553894-a7c4db624a4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
            ),
          ),
        ],
      ),
    );
  }
}
