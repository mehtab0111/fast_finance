import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Screen/kycForm.dart';
import 'package:fast_finance/Theme/colors.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';

class LoanAmount extends StatefulWidget {

  String title;
  LoanAmount({Key? key, required this.title}) : super(key: key);

  @override
  State<LoanAmount> createState() => _LoanAmountState();
}

class _LoanAmountState extends State<LoanAmount> {

  double _currentSliderValue = 50000;
  int tenure = 24;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: customDesignShade(),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: kMainColor,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  // decoration: roundedContainerDesign(context),
                  decoration: BoxDecoration(
                    color: kMainColor
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.currency_rupee_outlined, color: k2MainColor),
                              Text(_currentSliderValue.toStringAsFixed(2), style: kLargeStyle().copyWith(
                                color: Colors.black
                              )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text('${widget.title} starts from ₹5,0000 to ₹5,00,000 with 13% p.a.',
                          style: kSHeaderStyle().copyWith(color: kWhiteColor),
                          textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Select the loan amount'),
              ),
              Slider(
                value: _currentSliderValue,
                min: 5000,
                max: 500000,
                divisions: 100,
                activeColor: k2MainColor,
                inactiveColor: kMainColor,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('5000', style: kSmallStyle()),
                    Text('500000', style: kSmallStyle()),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Center(child: Text('Select Tenure Amount', style: kSmallStyle())),
              SizedBox(height: 5.0),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: (){
                          setState(() {
                            tenure--;
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      Column(
                        children: [
                          Text('$tenure', style: TextStyle(fontSize: 24),),
                          Text('MONTHS', style: kSmallStyle()),
                        ],
                      ),
                      IconButton(
                        onPressed: (){
                          setState(() {
                            tenure++;
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              amountContainer(
                context: context,
                title: 'Bank transfer up to',
                amount: '400000',
                desc: 'Higher tenure and lower fee & interest'
              ),
              amountContainer(
                  context: context,
                  title: 'Bank transfer up to',
                  amount: '100000',
                  desc: 'Tenure up to 10 months'
              ),
              amountContainer(
                  context: context,
                  title: 'Purchase on EMI',
                  amount: '200000',
                  desc: 'Higher limit and lower charges'
              ),
              SizedBox(height: 70.0),
            ],
          ),
        ),
        floatingActionButton: KButton(
          title: 'Apply Now',
          onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => KYCForm(amount: _currentSliderValue)));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

Padding amountContainer({
  required context, required String amount, required String title, required String desc
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
    child: Container(
      padding: EdgeInsets.all(10.0),
      decoration: roundedContainerDesign(context),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: kSmallStyle()),
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.account_balance_outlined),
                    ),
                    SizedBox(width: 10.0),
                    Text('₹$amount', style: kHeaderStyle()),
                  ],
                ),
                Text(desc, style: kSmallStyle()),
              ],
            ),
          ),
          MaterialButton(
            color: kMainColor,
            textColor: kBTextColor,
            shape: materialButtonDesign(),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => KYCForm(amount: double.parse(amount))));
            },
            child: Text('Apply Now'),
          ),
        ],
      ),
    ),
  );
}
