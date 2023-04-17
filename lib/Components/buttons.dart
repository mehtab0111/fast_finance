import 'package:flutter/material.dart';
import 'package:fast_finance/Theme/colors.dart';
import 'package:fast_finance/Theme/style.dart';

class KButton extends StatelessWidget {

  String title;
  Function() onClick;
  KButton({Key? key, required this.title, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [
            kMainColor,
            k2MainColor,
          ],
        ),
      ),
      child: MaterialButton(
        textColor: kWhiteColor,
        shape: materialButtonDesign(),
        minWidth: MediaQuery.of(context).size.width*0.9,
        onPressed: onClick,
        child: Text(title),
      ),
    );
  }
}

class K2Button extends StatelessWidget {

  String title;
  Function() onClick;
  K2Button({Key? key, required this.title,
    required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: MaterialButton(
        height: 45.0,
        color: kMainColor,
        textColor: kBTextColor,
        shape: materialButtonDesign(),
        onPressed: onClick,
        child: Row(
          children: [
            Icon(Icons.file_upload_outlined),
            SizedBox(width: 10.0),
            Text(title, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}


class SocialButton extends StatelessWidget {

  String image;
  Function() onClick;
  SocialButton({Key? key, required this.image, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onClick,
        child: CircleAvatar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}

ListTile profileButton(IconData iconData, String title, Function() onClicked) {
  return ListTile(
    horizontalTitleGap: 0.0,
    leading: Icon(iconData),
    title: Text(title),
    trailing: Icon(Icons.chevron_right_outlined),
    onTap: onClicked,
  );
}
