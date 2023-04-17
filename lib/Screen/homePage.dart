import 'package:fast_finance/Components/database.dart';
import 'package:fast_finance/Screen/loanAmount.dart';
import 'package:fast_finance/Screen/myLoan.dart';
import 'package:fast_finance/Screen/profilePage.dart';
import 'package:fast_finance/Theme/colors.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: customDesignShade(),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          centerTitle: true,
          // leading: Image.asset('images/app_logo.png'),
          title: Text('Fast Finance'.toUpperCase()),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('Loans', style: kSHeaderStyle()),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(10.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: loans.length,
                itemBuilder: (_, index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoanAmount(title: loans[index].title)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: roundedContainerDesign(context).copyWith(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2.0,
                            spreadRadius: 2.0,
                            color: kMainColor,
                            offset: Offset(1,2),
                          ),
                        ],
                      ),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   // gradient: kBottomShadedShadow(),
                      //   image: DecorationImage(
                      //     image: AssetImage(index % 2 == 0 ? 'images/gradient3.jpg' : 'images/gg.jpg'),
                      //     fit: BoxFit.cover,
                      //   )
                      // ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: Icon(loans[index].iconData, size: iconSize(),
                              color: kMainColor,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Flexible(
                            child: Text(loans[index].title,
                              style: kSHeaderStyle(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              ),
              customIconButton(
                context: context,
                iconData: Icons.account_balance_wallet_outlined,
                title: 'My Loans',
                subText: 'Access your current loan',
                onClick: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyLoan()));
                },
              ),
              customIconButton(
                context: context,
                iconData: Icons.stars_outlined,
                title: 'Refer & Earn',
                subText: 'Refer this app and earn rewards',
                onClick: (){
                  Share.share('Check out this app and get instant loan easily https://example.com');
                },
              ),
              customIconButton(
                context: context,
                iconData: Icons.person_outline_outlined,
                title: 'Profile',
                subText: 'Access to your personal information',
                onClick: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Padding customIconButton({required BuildContext context,
  required IconData iconData, required String title, required String subText,
  required Function() onClick}) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          // gradient: kBottomShadedShadow(),
          // image: DecorationImage(
          //   image: AssetImage('images/gradient3.jpg'),
          //   fit: BoxFit.cover,
          // ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              spreadRadius: 2.0,
              color: kMainColor,
              offset: Offset(1,2),
            ),
          ],
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: kWhiteColor,
              child: Icon(iconData, size: iconSize(), color: kMainColor),
            ),
            SizedBox(width: 10.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: kSHeaderStyle()),
                  Text(subText),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
