import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Fleash extends StatefulWidget {
  const Fleash({Key? key}) : super(key: key);

  @override
  _FleashState createState() => _FleashState();
}

class _FleashState extends State<Fleash> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 8, left: 30),
                child: Text(
                  'Итого',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 150),
                child: Text(
                  '120\$',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 138, 60, 55),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Ink(
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {},
                  child: Center(
                    child: isLoading
                        ? SpinKitThreeBounce(
                            color: Colors.white,
                            size: 28.0,
                          )
                        : Text(
                            'Далее',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
