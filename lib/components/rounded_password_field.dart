import 'package:flutter/material.dart';
import 'package:login_signup/components/text_field_container.dart';
import 'package:login_signup/constant.dart';



class Rounded_Password_Filed extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const Rounded_Password_Filed({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kprimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kprimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
