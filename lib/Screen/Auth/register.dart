import 'package:fast_finance/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Components/textField.dart';
import 'package:fast_finance/Screen/homePage.dart';
import 'package:fast_finance/Theme/style.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customDesignShade(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Sign Up', style: kWhiteTextStyle()),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Text('Sign Up!', style: TextStyle(fontSize: 50.0, color: kWhiteColor)),
              KTextField(title: 'Name'),
              KTextField(title: 'Email'),
              KTextField(title: 'Password'),
              KTextField(title: 'Confirm Password'),
              SizedBox(height: 10.0),
              KButton(
                title: 'Sign Up',
                onClick: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) => HomePage()), (route) => false);
                },
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?', style: kSmallStyle()),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text('Sign In'),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    image: 'images/facebook.png',
                    onClick: (){},
                  ),
                  SocialButton(
                    image: 'images/twitter.jpg',
                    onClick: (){},
                  ),
                  SocialButton(
                    image: 'images/icn_google.png',
                    onClick: (){},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
