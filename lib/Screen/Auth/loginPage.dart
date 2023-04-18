import 'package:fast_finance/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Components/textField.dart';
import 'package:fast_finance/Screen/Auth/register.dart';
import 'package:fast_finance/Screen/homePage.dart';
import 'package:fast_finance/Theme/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: customDesignShade(),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: kMainColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text('Sign In'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: kMainColor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Text('Welcome to Fast Finance',
                      style: kHeaderStyle(),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    Text('Get Instant\nPersonal loan up to',
                      textAlign: TextAlign.center,
                    ),
                    Text('₹4 lakhs', style: kHeaderStyle()),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  children: [
                    KTextField(title: 'Email'),
                    KTextField(title: 'Password'),
                    Row(
                      children: [
                        MaterialButton(
                          padding: EdgeInsets.zero,
                          onPressed: (){},
                          child: Row(
                            children: const [
                              Icon(Icons.check_box_outline_blank),
                              Text('Remember Me'),
                            ],
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: (){},
                          child: Text('Lost your password?'),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    KButton(
                      title: 'Sign In',
                      onClick: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) => HomePage()), (route) => false);
                      },
                    ),
                    Row(
                      children: [
                        Text('No Account? ', style: kSmallStyle()),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                          },
                          child: Text('Register Now'),
                        ),
                      ],
                    ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
