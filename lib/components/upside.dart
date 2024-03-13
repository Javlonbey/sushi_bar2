import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sushi_bar2/constants.dart';

class Upside extends StatelessWidget {
  const Upside({
    super.key,
    required this.imgUrl,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: kPrimaryColor,
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              scale: 5,
            ),
          ),
        ),
        iconBackButton(context),
      ],
    );
  }
}

iconBackButton(BuildContext context) {
  return IconButton(
    color: Colors.white,
    iconSize: 25,
    icon: Icon(CupertinoIcons.arrow_left),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
