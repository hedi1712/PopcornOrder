import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:submission_flutter_pemula/product.dart';

class RegistrationModel {
  String name;
  String address;
  String phoneNumber;
  String email;
  String flavour;
  String jumlah;

  RegistrationModel(this.name, this.address, this.phoneNumber, this.email,
      this.flavour, this.jumlah);
}

class BuyerProfile extends StatefulWidget {
  @override
  _BuyerProfileState createState() => _BuyerProfileState();
}

class _BuyerProfileState extends State<BuyerProfile> {
  final _formKey = GlobalKey<FormState>();

  String name;
  String address;
  String phoneNumber;
  String email;
  String flavour;
  String jumlah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: HexColor("#fdc124"),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Let',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 80,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 100, 0.0, 0.0),
                    child: Text(
                      'Us',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 80,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 170.0, 0.0, 70.0),
                    child: Text(
                      'Know.',
                      style: TextStyle(
                          color: HexColor('#764502'),
                          fontSize: 80,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      nameField(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      addressField(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      phoneField(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      emailField(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 50.0),
                      ),
                      nextButton(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 50.0),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget nameField() {
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
                return 'Form Name Kosong';
              }
              return null;
            },
            onSaved: (value) {
              name = value;
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                alignLabelWithHint: true,
                hintText: "Name",
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }

  Widget addressField() {
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
              }
              return null;
            },
            onSaved: (value) {
              address = value;
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

  Widget phoneField() {
    return Container(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Form Phone Number Kosong';
              }
              return null;
            },
            onSaved: (value) {
              phoneNumber = value;
            },
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: InputBorder.none,
                alignLabelWithHint: true,
                hintText: "Phone Number",
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }

  Widget emailField() {
    return Container(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Form Email Kosong';
              }
              return null;
            },
            onSaved: (value) {
              email = value;
            },
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: InputBorder.none,
                alignLabelWithHint: true,
                hintText: "Email",
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }

  Widget nextButton() {
    return Container(
      width: 500,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: HexColor("#fdc124"),
      ),
      child: FlatButton(
        child: Text('Next',
            style: TextStyle(
                color: HexColor('#764502'),
                fontWeight: FontWeight.bold,
                fontSize: 18),
            textAlign: TextAlign.center),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductPage(
                        registrationModel: RegistrationModel(name, address,
                            phoneNumber, email, flavour, jumlah))));
          }
        },
      ),
    );
  }
}
