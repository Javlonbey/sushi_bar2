import 'package:flutter/material.dart';
import 'package:sushi_bar2/components/fleash.dart';

class Purchases extends StatefulWidget {
  const Purchases({super.key});

  @override
  _PurchasesState createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  int totalAmount = 100;

  void increaseAmount() {
    setState(() {
      totalAmount *= 2;
    });
  }

  void decreaseAmount() {
    setState(() {
      totalAmount = (totalAmount == 0) ? 0 : (totalAmount ~/ 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 125,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/SS.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                Text(
                  'Pizza <<Pineapple>>',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 23),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      increaseAmount();
                    },
                    icon: Icon(Icons.add),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      decreaseAmount();
                    },
                    icon: Icon(Icons.remove),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$totalAmount\$',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Divider(
          color: Colors.white,
          thickness: 1,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'Промокод',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: Text(
                'Вести Промокод',
                style: TextStyle(
                  color: Color.fromARGB(255, 29, 207, 35),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Divider(
          color: Colors.white,
          thickness: 1,
        ),
        SizedBox(height: 160),
        Fleash()
      ],
    );
  }
}
