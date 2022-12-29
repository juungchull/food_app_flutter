import 'package:flutter/material.dart';

class SaleCard extends StatelessWidget {
  const SaleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.3),
            blurRadius: 5.0,
            spreadRadius: 1,
            offset: Offset(2, 7),
          )
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.28,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          top: 15,
          right: 10,
          bottom: 15,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Burger \nMania',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Text(
                  '50%',
                  style: TextStyle(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'FLAT OFF',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'T&C Applies*',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Positioned(
                right: 0,
                bottom: 10,
                child: Container(
                  width: 180,
                  height: 180,
                  child: Image(
                      image: AssetImage('assets/images/Pizza maker-pana.png')),
                ))
          ],
        ),
      ),
    );
  }
}
