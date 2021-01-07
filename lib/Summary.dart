import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:submission_flutter_pemula/buyer_profile.dart';

class Summary extends StatefulWidget{

  final RegistrationModel registrationModel;

  Summary({Key key, this.registrationModel}) : super(key: key);

  @override
  _Summary createState() => _Summary();
  }

 class _Summary extends State<Summary>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 0.0),
              child: Text(
                '${widget.registrationModel.jumlah}',
                style: TextStyle(
                    color: HexColor('#764502'),
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 100, 0.0, 0.0),
              child: Text(
                '${widget.registrationModel.flavour}',
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
    );
  }

 }