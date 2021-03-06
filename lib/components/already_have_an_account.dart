import 'package:flutter/material.dart';
import 'package:login_signup/constant.dart';


class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Dont Have Account ? " : "Already have an Account ?",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap:press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(color: kprimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
