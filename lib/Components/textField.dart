import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fast_finance/Theme/colors.dart';

class KTextField extends StatelessWidget {

  TextEditingController? controller;
  String title;
  TextInputType? textInputType;
  int? textLimit;
  KTextField({Key? key,
    required this.title,
    this.controller,
    this.textInputType,
    this.textLimit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          keyboardType: textInputType,
          controller: controller,
          inputFormatters:[
            LengthLimitingTextInputFormatter(textLimit),
          ],
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
            prefixIcon: textLimit == 10 ?
            Padding(padding: EdgeInsets.only(left: 5, top: 10.0),
                child: Text('+91 ')) : null,
          ),
        ),
      ),
    );
  }
}


class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 1,
            color: kMainColor.withOpacity(0.2),
            offset: Offset(0, 1),
          )
        ],
      ),
      child: TextField(
        readOnly: true,
        onTap: (){},
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: kMainColor, size: 30),
          hintText: 'Search Product',
          hintStyle: TextStyle(color: kMainColor),
        ),
      ),
    );
  }
}
