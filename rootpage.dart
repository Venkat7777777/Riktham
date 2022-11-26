import 'package:flutter/material.dart';
import 'package:riktam_hackathon/Screens/login.dart';
import 'package:riktam_hackathon/Screens/homescreen.dart';
import 'package:riktam_hackathon/Utilities/auth.dart';


class RootPage extends StatefulWidget {
  RootPage({Key key, this.auth}) : super(key: key);
  final BaseAuth auth;


  @override
  _RootPageState createState() => _RootPageState();
}

enum AuthStats{
  notSignedIn,
  signedIn,
}

class _RootPageState extends State<RootPage> {

  AuthStats authStatus = AuthStats.notSignedIn;

  initState() {
    super.initState();
    widget.auth.currentUser().then((userId) {
      setState(() {
        authStatus = userId != null ? AuthStats.signedIn : AuthStats.notSignedIn;
      });
    });
  }

  void _updateAuthStatus(AuthStats status) {
    setState(() {
      authStatus = status;
    });
  }


  @override
  Widget build(BuildContext context) {
    switch (authStatus) {
      case AuthStats.notSignedIn:
        return new LoginScreen();
      case AuthStats.signedIn:
        return new HomeScreen();
    }
  }
}
