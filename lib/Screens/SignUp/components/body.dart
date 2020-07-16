import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:login_signup/Screens/Login/login.dart';
import 'package:login_signup/Screens/SignUp/components/background.dart';
import 'package:login_signup/Screens/SignUp/components/social_icon.dart';
import 'package:login_signup/components/already_have_an_account.dart';
import 'package:login_signup/components/round_button.dart';
import 'package:login_signup/components/round_input_field.dart';
import 'package:login_signup/components/rounded_password_field.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 25.0),

            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/signup.png",
              height: size.height * 0.258,
            ),
            RoundTextInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            Rounded_Password_Filed(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
