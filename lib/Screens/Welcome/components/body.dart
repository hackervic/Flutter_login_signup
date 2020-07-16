import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/Screens/Login/login.dart';
import 'package:login_signup/Screens/SignUp/SignUp.dart';
import 'package:login_signup/Screens/Welcome/components/background.dart';
import 'package:login_signup/constant.dart';
import 'package:login_signup/components/round_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome :)",
            style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 35.0),
          ),
          Text(
            "Badi Bazaar",
            style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 20.0),
          ),
          SizedBox(height: size.height * 0.028),

          Image.asset(
            "assets/images/register.png",
            height: size.height * 0.4,
          ),
          SizedBox(height: size.height * 0.04),

          RoundedButton(
            text: "Login",
            press: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context){
                  return LoginScreen();
                }
              )
              );
            },
          ),
          RoundedButton(
            textcolor: Colors.black,
            text: "SignUp",
            color:btn2 ,
            press: (){
              Navigator.push(context,MaterialPageRoute(
                  builder: (context){
                    return SignUpScreen();
                  }
              )
              );
            },
          )

        ],
      ),
    );
  }
}

