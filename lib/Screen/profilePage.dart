import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Screen/Auth/loginPage.dart';
import 'package:fast_finance/Screen/Profile/account.dart';
import 'package:fast_finance/Screen/myLoan.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customDesignShade(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 50.0),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/img_blank_profile.png'),
              ),
              SizedBox(height: 10.0),
              Text('Manojit Mallick', style: kHeaderStyle()),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: roundedContainerDesign(context),
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      profileButton(Icons.person_outline_outlined, 'Account', (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Account()));
                      },),
                      profileButton(Icons.account_balance_wallet_outlined, 'My Loan', (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoan()));
                      },),
                      profileButton(Icons.settings_outlined, 'Settings', (){},),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: roundedContainerDesign(context),
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      profileButton(Icons.settings_accessibility_outlined, 'About US', (){},),
                      profileButton(Icons.gavel_outlined, 'Term & Condition', (){},),
                      profileButton(Icons.security_outlined, 'Privacy Policy', (){},),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              KButton(
                title: 'Logout',
                onClick: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) => LoginPage()), (route) => false);
                },
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
