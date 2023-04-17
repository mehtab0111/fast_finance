import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Components/textField.dart';
import 'package:fast_finance/Screen/congratulation.dart';
import 'package:fast_finance/Theme/colors.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class KYCForm extends StatefulWidget {

  double amount;
  KYCForm({required this.amount, Key? key}) : super(key: key);

  @override
  State<KYCForm> createState() => _KYCFormState();
}

class _KYCFormState extends State<KYCForm> {

  final ImagePicker _picker = ImagePicker();

  String dropdownValue = '6 Months';
  String documentValue = 'Aadhaar';

  List<String> tenureList = [
    '6 Months',
    '12 Months',
  ];

  List<String> documentList = [
    'Aadhaar',
    'Voter ID',
    'Driving Licence',
    'Passport',
  ];

  var image;
  var fDocumentImg;
  var bDocumentImg;
  var panCardImage;
  var selfieImage;
  var passportImage;
  void _imgFromGallery(int num) async {
    var pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if(num == 1) {
      setState(() {
        fDocumentImg = pickedImage!.path;
      });
    } else if(num == 2){
      setState(() {
        bDocumentImg = pickedImage!.path;
      });
    } else if(num == 3){
      setState(() {
        panCardImage = pickedImage!.path;
      });
    }
    else if(num == 4){
      setState(() {
        selfieImage = pickedImage!.path;
      });
    } else if(num == 5){
      setState(() {
        passportImage = pickedImage!.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: customDesignShade(),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: Text('Complete your KYC'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('You have applied for', style: kSmallStyle()),
              Text('₹${widget.amount.toStringAsFixed(2)}', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              Text('Interest rate 13% p.a.', style: kSmallStyle()),
              Divider(thickness: 1),
              Text('Tenure', style: kSmallStyle()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor != Colors.black ? Colors.white : kDarkColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 1,
                        color: kMainColor.withOpacity(0.2),
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        value: dropdownValue,
                        items: tenureList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1),
              Text('Provide KYC', style: kSHeaderStyle()),
              SizedBox(height: 10.0),
              Text('Document', style: kSmallStyle()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor != Colors.black ? Colors.white : kDarkColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 1,
                        color: kMainColor.withOpacity(0.2),
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10.0),
                        value: documentValue,
                        items: documentList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            documentValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              KTextField(
                title: 'Document Number',
                textInputType: TextInputType.number,
              ),
              KTextField(title: 'Pan Card Number'),
              Text('Bank Account Details', style: kSHeaderStyle()),
              KTextField(
                title: 'Account Number',
                textInputType: TextInputType.number,
              ),
              KTextField(title: 'Bank Name'),
              KTextField(title: 'IFSC Code'),
              SizedBox(height: 10.0),
              Text('Upload Required Documents', style: kHeaderStyle()),
              SizedBox(height: 10.0),
              K2Button(title: fDocumentImg != null ? 'Change' : 'Upload front side of your document', onClick: (){
                _imgFromGallery(1);
              }),
              K2Button(title: bDocumentImg != null ? 'Change' : 'Upload back side of your document', onClick: (){
                _imgFromGallery(2);
              }),
              K2Button(title: panCardImage != null ? 'Change' : 'Upload your Pan Card', onClick: (){
                _imgFromGallery(3);
              }),
              K2Button(title: selfieImage != null ? 'Change' : 'Upload a selfie', onClick: (){
                _imgFromGallery(4);
              }),
              K2Button(title: passportImage != null ? 'Change' : 'Upload your passport', onClick: (){
                _imgFromGallery(5);
              }),
              SizedBox(height: 70.0),
            ],
          ),
        ),
        floatingActionButton: KButton(
          title: 'Submit your KYC',
          onClick: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Congratulation()));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
