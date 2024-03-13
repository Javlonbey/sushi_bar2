import 'package:flutter/material.dart';
import 'package:sushi_bar2/them/colors.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildRow(Icons.mode_edit_sharp, 'Написать отзыв',
                    Icons.arrow_forward_ios),
                SizedBox(height: 7),
                buildDivider(),
                buildRow(Icons.info_outline, 'О нас', Icons.arrow_forward_ios),
                SizedBox(height: 7),
                buildDivider(),
                buildRow(
                    Icons.volume_down, 'Сообщение', Icons.arrow_forward_ios),
                SizedBox(height: 7),
                buildDivider(),
                buildRow(
                    Icons.percent_outlined, 'Акции', Icons.arrow_forward_ios),
                SizedBox(height: 7),
                buildDivider(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildRow(IconData icon, String text, IconData arrowIcon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: primaryColor,
              size: 25,
            ),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Icon(arrowIcon, color: Colors.black, size: 18),
        ),
      ],
    );
  }

  Widget buildDivider() {
    return Divider(
      color: Colors.black,
      thickness: 1,
    );
  }
}
