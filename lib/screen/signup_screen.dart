import 'package:flutter/material.dart';
import 'package:sushi_bar2/components/page_title_bar.dart';
import 'package:sushi_bar2/components/under_part.dart';
import 'package:sushi_bar2/components/upside.dart';
import 'package:sushi_bar2/constants.dart';
import 'package:sushi_bar2/pages/menu_page.dart';
import 'package:sushi_bar2/screen/login_screen.dart';
import 'package:sushi_bar2/widgets/rounded_button.dart';
import 'package:sushi_bar2/widgets/rounded_input_field.dart';
import 'package:sushi_bar2/widgets/rounded_password_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                const PageTitleBar(title: 'account'),
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
                              const RoundedInputFild(
                                hintText: "Name",
                                icon: Icons.person,
                              ),
                              const RoundedPasswordField(),
                              RoundedButton(
                                text: 'REGISTER',
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
                              UnderPart(
                                title: "Already have an account?",
                                navigatorText: "Login here",
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Forgot password?',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
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
