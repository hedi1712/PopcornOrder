import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:submission_flutter_pemula/buyer_profile.dart';

import 'main.dart';

class Summary extends StatefulWidget {
  final RegistrationModel registrationModel;

  Summary({Key key, this.registrationModel}) : super(key: key);

  @override
  _Summary createState() => _Summary();
}

class _Summary extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE d MMM').format(now);
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.fromLTRB(15.0, 150.0, 0.0, 0.0),
                child: Text(
                  'THANK YOU!!',
                  style: TextStyle(
                      color: HexColor('#764502'),
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 300.0, 30.0, 0.0),
                child: Text(
                  """Thank you for giving our product on $formattedDate, here the name of the customer is ${widget.registrationModel.name} and the address is ${widget.registrationModel.address} for the product ordered with the flavor ${widget.registrationModel.flavour} and the number is ${widget.registrationModel.jumlah}. this message we also send it to ${widget.registrationModel.email} and the telephone number ${widget.registrationModel.phoneNumber} that you registered earlier.""",
                  style: TextStyle(
                      color: HexColor('#764502'),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 300.0, 30.0, 80.0),
                child: Text(
                  """Thank you for giving our product on $formattedDate, here the name of the customer is ${widget.registrationModel.name} and the address is ${widget.registrationModel.address} for the product ordered with the flavor ${widget.registrationModel.flavour} and the number is ${widget.registrationModel.jumlah}. this message we also send it to ${widget.registrationModel.email} and the telephone number ${widget.registrationModel.phoneNumber} that you registered earlier.""",
                  style: TextStyle(
                      color: HexColor('#764502'),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          FlatButton(
            child: Text('Order Again',
                style: TextStyle(
                    color: HexColor('#764502'),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          )
        ],
      )),
    );
  }
}
