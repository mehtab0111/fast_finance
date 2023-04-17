import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Screen/homePage.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatefulWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  State<Congratulation> createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      // ),
      body: Column(
        children: [
          SizedBox(height: 50.0),
          Text('KYC Verified'.toUpperCase(), style: kHeaderStyle().copyWith(
            fontSize: 30.0
          )),
          Flexible(child: Image.asset('images/congratulation.gif')),
          Text("Congrats your loan application has approved money has been "
              "transferred to your bank account.", textAlign: TextAlign.center),
        ],
      ),
      floatingActionButton: KButton(
        title: 'Go to Home',
        onClick: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
              builder: (context) => HomePage()), (route) => false);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
