import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class InitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // leading: IconButton(
      //   icon: SvgPicture.asset("assets/icon/back.svg"),
      //   onPressed: () {},
      // ),
    );
  }
}
