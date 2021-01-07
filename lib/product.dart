import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:submission_flutter_pemula/Succeed.dart';

import 'buyer_profile.dart';

class ProductPage extends StatefulWidget {
  final RegistrationModel registrationModel;

  ProductPage({Key key, this.registrationModel}) : super(key: key);

  @override
  _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  final _formKey = GlobalKey<FormState>();
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
              Column(
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
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    padding: EdgeInsets.only(top: 1.0, left: 40.0, right: 40.0),
                    decoration: BoxDecoration(
                        color: HexColor('#764502'),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0))),
                    child: ListView(
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                        ),
                        countItem(),
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.all(50.0),
                          ),
                        ),
                        nextButton()
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Widget countItem() {
    return Form(
      key: _formKey,
      child: Center(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5.0,left: 15.0,right: 15.0),
            child: Text(
              'ORIGINAL',
              style: TextStyle(
                  backgroundColor: HexColor("#fdc124"),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              'KARAMEL',
              style: TextStyle(
                  backgroundColor: HexColor("#fdc124"),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Text(
              'COKLATE',
              style: TextStyle(
                  backgroundColor: HexColor("#fdc124"),
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Mohon diisi';
                }
                return null;
              },
              onSaved: (value) {
                flavour = value;
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  alignLabelWithHint: true,
                  hintText: "Tuliskan Rasa yang Dipilih",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.all(10.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              textAlign: TextAlign.center,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Mohon Diisi';
                }
                return null;
              },
              onSaved: (value) {
                jumlah = value;
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  alignLabelWithHint: true,
                  hintText: "Jumlah Yang Dipesan",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          )
        ],
      )),
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
                    builder: (context) => Succeed(
                        registrationModel: RegistrationModel(
                            widget.registrationModel.name,
                            widget.registrationModel.address,
                            widget.registrationModel.phoneNumber,
                            widget.registrationModel.email,
                            flavour,
                            jumlah))));
          }
        },
      ),
    );
  }
}
