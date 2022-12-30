import 'package:flutter/material.dart';
import 'package:flutter_app/src/model/card.dart';

class BottomMenuList extends StatefulWidget {
  const BottomMenuList({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomMenuList> createState() => _BottomMenuListState();
}

class _BottomMenuListState extends State<BottomMenuList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardDetail.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => cardDetail[index].route,
            ));
          },
          child: Container(
              padding: EdgeInsets.only(right: 20),
              child: Container(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 155,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(cardDetail[index].url),
                              fit: BoxFit.cover),
                        ),
                        child: Stack(
                          children: [
                            // Image(
                            //   width: double.infinity,
                            //   height: double.infinity,
                            //   image: NetworkImage(cardDetail[index].url),
                            //   fit: BoxFit.cover,
                            // ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                '${cardDetail[index].sale}% Off',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        )),
                    SizedBox(height: 5),
                    Text(
                      cardDetail[index].foodName,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(
                          Icons.ac_unit_outlined,
                          color: Colors.grey,
                          size: 12,
                        ),
                        Text(
                          cardDetail[index].foodStar,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          cardDetail[index].foodTime,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
