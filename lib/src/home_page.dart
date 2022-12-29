import 'package:flutter/material.dart';
import 'package:flutter_app/src/widgets/bottom_menu_list.dart';
import 'package:flutter_app/src/widgets/head.dart';
import 'package:flutter_app/src/widgets/menu_list.dart';
import 'package:flutter_app/src/widgets/sale_card.dart';
import 'package:flutter_app/src/widgets/search_bar.dart';
import 'package:flutter_app/src/widgets/small_para.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //버튼과 키보드가 겹치는 오류 해결
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          children: [
            Head(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SearchBar(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SaleCard(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            SmallPara(text: "What's on your mind ?"),
            MenuList(),
            SmallPara(text: 'Places near you'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            BottomMenuList(),
          ],
        ),
      )),
    );
  }
}
