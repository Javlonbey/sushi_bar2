import 'package:flutter/material.dart';
import 'package:sushi_bar2/components/page_title_bar.dart';
import 'package:sushi_bar2/components/upside.dart';
import 'package:sushi_bar2/constants.dart';
import 'package:sushi_bar2/pages/menu_page.dart';
import 'package:sushi_bar2/screen/signup_screen.dart';
import 'package:sushi_bar2/widgets/rouded_icon.dart';
import 'package:sushi_bar2/widgets/rounded_button.dart';
import 'package:sushi_bar2/widgets/rounded_input_field.dart';
import 'package:sushi_bar2/widgets/rounded_password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(imgUrl: "assets/images/S.png"),
                const PageTitleBar(title: 'Login to your account'),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15),
                        iconButton(context),
                        const SizedBox(height: 20),
                        const Text(
                          "or use your email account",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'OpenSans',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Form(
                          child: Column(
                            children: [
                              const RoundedInputFild(
                                hintText: "Email",
                                icon: Icons.email,
                              ),
                              const RoundedPasswordField(),
                              switchListTile(),
                              RoundedButton(
                                text: 'LOGIN',
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return MenuPage();
                                    }),
                                  );
                                },
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUpScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 50),
                                      child: Text(
                                        'Register here',
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: const Text(
                                      ' Forgot password?',
                                      style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

switchListTile() {
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 40),
    child: SwitchListTile(
      dense: true,
      title: Text(
        'Remember Me',
        style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
      ),
      value: true,
      activeColor: kPrimaryColor,
      onChanged: (val) {},
    ),
  );
}

iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      RoundedIcon(imageUrl: "assets/images/F.png"),
      SizedBox(width: 20),
      RoundedIcon(imageUrl: "assets/images/G.png"),
      SizedBox(width: 20),
      RoundedIcon(imageUrl: "assets/images/TW.png"),
    ],
  );
}
