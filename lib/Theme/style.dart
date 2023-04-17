import 'package:flutter/material.dart';
import 'package:fast_finance/Theme/colors.dart';

TextStyle kHeaderStyle() => TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
TextStyle kSHeaderStyle() => TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
TextStyle kSmallStyle() => TextStyle(fontSize: 14);
TextStyle k16Style() => TextStyle(fontSize: 16);
TextStyle linkTextStyle() => TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);
TextStyle kWhiteTextStyle() => TextStyle(color: kWhiteColor);
double iconSize() => 35;
SizedBox kSpace() => SizedBox(height: 10.0);

RoundedRectangleBorder materialButtonDesign() {
  return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));
}

RoundedRectangleBorder bottomSheetRoundedDesign() {
  return RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      )
  );
}

BoxDecoration containerDesign(context) {
  return BoxDecoration(
    color: Theme.of(context).scaffoldBackgroundColor != Colors.black ? Colors.white : kDarkColor,
  );
}

BoxDecoration roundedContainerDesign(context) {
  return BoxDecoration(
    color: Theme.of(context).scaffoldBackgroundColor != Colors.black ? Colors.white : kDarkColor,
    borderRadius: BorderRadius.circular(10.0),
  );
}

LinearGradient kBottomShadedShadow() {
  return LinearGradient(
    colors: [
      Color(0xffB9D1EB),
      Color(0xffF876DE),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: const [0.0, 1.0],
    tileMode: TileMode.clamp,
  );
}

BoxDecoration shadedGradientStyle() {
  return BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: FractionalOffset.bottomCenter,
        stops: const [
          0.0,
          0.20,
          0.28,
          0.50
        ],
        colors: [
          kMainColor.withOpacity(0.3),
          kMainColor.withOpacity(0.5),
          kMainColor.withOpacity(0.7),
          kMainColor.withOpacity(0.9),
        ]
    ),
  );
}

Row offerText(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5.0),
        child: Icon(Icons.fiber_manual_record, size: 10),
      ),
      SizedBox(width: 5.0),
      Flexible(child: Text(text, style: kSmallStyle())),
    ],
  );
}

BoxDecoration customDesignShade() {
  return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/background.jpg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.softLight),
      )
  );
}