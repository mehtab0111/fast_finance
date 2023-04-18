import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Components/textField.dart';
import 'package:fast_finance/Screen/homePage.dart';
import 'package:fast_finance/Theme/colors.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refer & earn'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.info_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              color: kMainColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.savings, color: kWhiteColor),
                      Text('300', style: kLargeStyle()),
                    ],
                  ),
                  Text('Fast Finance Points', style: kSmallStyle().copyWith(color: kWhiteColor)),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Text('Your Referral Code', style: kSmallStyle().copyWith(color: kWhiteColor),),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  color: kMainColor.withOpacity(0.1),
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextField(
                              readOnly: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'XXX00',
                                suffixIcon: TextButton(
                                  onPressed: (){
                                    var snackBar = SnackBar(content: Text('Code Copied'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  },
                                  child: Text('click to\ncopy', textAlign: TextAlign.end),
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      MaterialButton(
                        height: 50,
                        color: k2MainColor,
                        textColor: kWhiteColor,
                        shape: materialButtonDesign(),
                        onPressed: (){
                          Share.share('Check out this app and get instant loan easily https://example.com');
                        },
                        child: Row(
                          children: const [
                            Icon(Icons.share_outlined),
                            SizedBox(width: 5.0),
                            Text('Share'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0),
            customIconButton(
              context: context, iconData: Icons.payments_outlined,
              title: 'Redeem points',
              subText: 'Low points balance, refer to earn cashback',
              onClick: (){
                Share.share('Check out this app and get instant loan easily https://example.com');
              },
            ),
            ListTile(
              title: Text('Redeem Referrals'),
              onTap: (){},
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Referer Points History'),
              onTap: (){},
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Refer to Earn'),
              onTap: (){},
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
