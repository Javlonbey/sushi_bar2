import 'package:flutter/material.dart';
import 'package:sushi_bar2/constants.dart';
import 'package:sushi_bar2/widgets/text_feild_container.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextFormField(
        obscureText: _isObscured,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          hintText: "Password",
          hintStyle: const TextStyle(fontFamily: 'OpenSans'),
          suffixIcon: IconButton(
            icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
            color: kPrimaryColor,
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
