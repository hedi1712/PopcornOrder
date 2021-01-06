import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:submission_flutter_pemula/buyer_profile.dart';

void main() {
  // We need to call it manually,
  // because we going to call setPreferredOrientations()
  // before the runApp() call
  WidgetsFlutterBinding.ensureInitialized();

  // Than we setup preferred orientations,
  // and only after it finished we run our app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'helvetica'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fdc124"),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 500),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/logo.png"))),
                  ),
                  Container(
                    child: FlatButton(
                      child: Center(
                        child: Container(
                          width: 300,
                          height: 50,
                          padding: EdgeInsets.fromLTRB(15.0, 15, 15.0, 0.0),
                          child: Text(
                            'Order',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: HexColor("#fdc124"),fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#764502'),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BuyerProfile();
                        }));
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
