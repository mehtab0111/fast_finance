import 'package:fast_finance/Theme/colors.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';

class MyLoan extends StatefulWidget {
  const MyLoan({Key? key}) : super(key: key);

  @override
  State<MyLoan> createState() => _MyLoanState();
}

class _MyLoanState extends State<MyLoan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customDesignShade(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('My Loan', ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Loan Amount', style: kHeaderStyle()),
                  SizedBox(width: 10.0),
                  Text('₹50,000', style: kHeaderStyle().copyWith(fontSize: 30)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('images/gradient3.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Installment', style: kHeaderStyle()),
                    Divider(thickness: 1, color: kWhiteColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('JUNE'),
                        Text('₹3526'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('JULY'),
                        Text('₹3526'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('AUG'),
                        Text('₹3526'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('SEP'),
                        Text('₹3526'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('OCT'),
                        Text('₹3526'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
