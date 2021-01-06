import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'buyer_profile.dart';

class ProductPage extends StatefulWidget {
  final RegistrationModel registrationModel;
  ProductPage({Key key, this.registrationModel}) : super(key: key);
    @override
    _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage>{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: HexColor("#fdc124"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 60.0, 0.0, 0.0),
                    child: Text(
                      'Hey, ${widget.registrationModel.name}',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text(
                      'What\'s',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 160.0, 0.0, 0.0),
                    child: Text(
                      'The',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 210.0, 0.0, 0.0),
                    child: Text(
                      'Popcorn',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 260.0, 0.0, 0.0),
                    child: Text(
                      'Taste ?',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 48,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              padding: EdgeInsets.only(top: 20, left: 40.0, right: 40.0),
              decoration: BoxDecoration(
                  color: HexColor('#764502'),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: [
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                  ),
                  checkBox(),
                  countItem(),
                  nextButton()
                ],
              ),
            ),
          ],
        ),
      ));
  }

  Widget checkBox(){
    return Container(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            textAlign: TextAlign.center,
            validator: (value) {
              if (value.isEmpty) {
                return 'Form Address Kosong';
              } return  null;
            },
            onSaved: (value) {
              widget.registrationModel.address = value;
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                alignLabelWithHint: true,
                hintText: "Address",
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
  Widget countItem(){
    return Scaffold();
  }
  Widget nextButton(){
    return Scaffold();
  }
}
