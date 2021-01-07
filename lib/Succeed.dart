import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:submission_flutter_pemula/Summary.dart';

import 'buyer_profile.dart';

class Succeed extends StatefulWidget {
  final RegistrationModel registrationModel;

  Succeed({Key key, this.registrationModel}) : super(key: key);

  @override
  _Succeed createState() => _Succeed();
}

class _Succeed extends State<Succeed> {
  final String checkSvg = 'assets/succedd.png';

  final splashDelay = 1;

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => Summary(
                  registrationModel: widget.registrationModel,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fdc124"),
      body:  Center(
        child: Container(
          padding: EdgeInsets.only(top: 500),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(checkSvg))),
        ),
      ),
    );
  }
}
