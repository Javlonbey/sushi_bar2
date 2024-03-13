import 'package:flutter/material.dart';
import 'package:sushi_bar2/constants.dart';
import 'package:sushi_bar2/widgets/text_feild_container.dart';

class RoundedInputFild extends StatelessWidget {
  const RoundedInputFild({super.key, this.hintText, this.icon = Icons.person});

  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextFormField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(fontFamily: 'OpenSans'),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
