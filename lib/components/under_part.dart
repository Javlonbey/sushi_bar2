import 'package:flutter/material.dart';
import 'package:sushi_bar2/constants.dart';

class UnderPart extends StatelessWidget {
  const UnderPart({
    super.key,
    required this.title,
    required this.navigatorText,
    this.onTap,
  });

  final String title;
  final String navigatorText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 20),
          Text(
            navigatorText,
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'OpenSans'),
          ),
        ],
      ),
    );
  }
}
