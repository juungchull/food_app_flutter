import 'package:flutter/material.dart';

class BrugerMax extends StatelessWidget {
  const BrugerMax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
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
                left: 50,
                top: 100,
                child: Container(
                  color: Colors.purple,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
