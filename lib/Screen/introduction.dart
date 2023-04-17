import 'package:fast_finance/Screen/Auth/loginPage.dart';
import 'package:fast_finance/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPage()),
    );
  }

  Widget _buildFullscreenImage(String image) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Welcome",
          body: "Get started with us to get instance loan",
          image: _buildFullscreenImage('images/intro1.gif'),
          decoration: pageDecoration.copyWith(
            bodyFlex: 1,
            imageFlex: 3,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
        ),
        PageViewModel(
          title: "Get better Service",
          body: "Get quick and easy service with just one tap",
          image: _buildFullscreenImage('images/intro2.gif'),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 3,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
        ),
        PageViewModel(
          title: "You Are Ready To Go",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Get Started", style: bodyStyle),
              // Icon(Icons.edit),
              Text("", style: bodyStyle),
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          image: _buildFullscreenImage('images/intro3.gif'),
          reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      back: Icon(Icons.arrow_back, color: kWhiteColor),
      skip: Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: Icon(Icons.arrow_forward, color: kWhiteColor),
      done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: kWhiteColor)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: ShapeDecoration(
        gradient: LinearGradient(
          colors: [kMainColor, k2MainColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
