import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/Screens/Login/components/background.dart';
import 'package:login_signup/Screens/SignUp/SignUp.dart';
import 'package:login_signup/components/already_have_an_account.dart';
import 'package:login_signup/components/round_button.dart';
import 'package:login_signup/components/round_input_field.dart';
import 'package:login_signup/components/rounded_password_field.dart';
import 'package:login_signup/components/text_field_container.dart';
import 'package:login_signup/constant.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        margin: EdgeInsets.only(top: 35.0),
        child: Column(
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.green),
            ),
            SizedBox(
              height: size.height * 0.005,
            ),
            SvgPicture.asset(
              "assets/images/man.svg",
              height: size.height * 0.39,
            ),
            SizedBox(
             // height: size.height * 0.02,
            ),
            RoundTextInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            Rounded_Password_Filed(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Login",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)
            {
              return SignUpScreen();
            }
            )
            );
            }
            )
          ],
        ),
      ),
    );
  }
}
