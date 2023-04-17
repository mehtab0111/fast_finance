import 'dart:io';
import 'package:fast_finance/Components/buttons.dart';
import 'package:fast_finance/Components/textField.dart';
import 'package:fast_finance/Theme/colors.dart';
import 'package:fast_finance/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController altMobile = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  var image;

  void _imgFromGallery() async {
    var pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = pickedImage!.path;
    });
  }

  void _imgFromCamera() async {
    var pickedImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = pickedImage!.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            kSpace(),
            Stack(
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundColor:Theme.of(context).scaffoldBackgroundColor != Colors.black ?
                  Colors.white : kDarkColor,
                  child: image != null ? CircleAvatar(
                    radius: 70,
                    backgroundImage: FileImage(File(image)),
                  ) : CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/img_blank_profile.png'),
                  )
                ),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.6),
                    radius: 20,
                    child: IconButton(
                      icon: Icon(Icons.edit_outlined),
                      color: Colors.white,
                      onPressed: (){
                        chooseImage(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
            kSpace(),
            KTextField(title: 'Name', controller: name),
            KTextField(title: 'Email', controller: email),
            KTextField(title: 'Account number'),
            KTextField(
              title: 'Mobile',
              textInputType: TextInputType.number,
              controller: mobile,
              textLimit: 10,
            ),
            KTextField(
              title: 'Alternate mobile',
              textInputType: TextInputType.number,
              controller: altMobile,
              textLimit: 10,
            ),
            SizedBox(height: 80.0),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: KButton(
        title: 'Update',
        onClick: (){
          // updateProfile(context);
          // updateProfile();
        },
      ),
    );
  }

  Future<void> chooseImage(BuildContext context) {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          )
      ),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 220,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                KButton(
                  title: 'Take Photo',
                  onClick: (){
                    Navigator.pop(context);
                    _imgFromCamera();
                  },
                ),
                kSpace(),
                KButton(
                  title: 'Choose Photo',
                  onClick: (){
                    Navigator.pop(context);
                    _imgFromGallery();
                  },
                ),
                kSpace(),
                KButton(
                  title: 'Delete Photo',
                  onClick: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
