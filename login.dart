import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riktam_hackathon/Screens/register.dart';
import 'package:riktam_hackathon/Utilities/constants.dart';
import 'package:riktam_hackathon/Utilities/auth.dart';
import 'package:riktam_hackathon/Screens/homescreen.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title, this.auth, this.onSignIn}) : super(key: key);

  final String title;
  final BaseAuth auth;
  final VoidCallback onSignIn;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String _email = "badri.maddali@gmail.com";
  String _password = "1234@Abcd";
  String _authHint = '';
  Widget _emailTextField() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: TextFormField(

        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Color(0xFFF9F9F9),
          fontFamily: 'Poppins',
        ),
        decoration: InputDecoration(
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF727780)),
          ),
          focusedBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF856D3E)),
          ),
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            Icons.email_outlined,
            color: Color(0xFFA3A5AC),
          ),
          hintText: 'Enter your Email',
          hintStyle: hintTextStyle,

        ),
        validator: (val) => val.isEmpty ? 'Email id cannot be null' : null,
        onSaved: (val) => _email = val,
      ),

    );
  }

  Widget _passwordTextField() {
      return Container(
        alignment: Alignment.centerLeft,
        height: 60.0,
        child: TextFormField(
          obscureText: true,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontFamily: 'Poppins',
          ),
          decoration: InputDecoration(
            enabledBorder: new UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF727780)),
            ),
            focusedBorder: new UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF856D3E)),
            ),
            contentPadding: EdgeInsets.only(top: 14.0),
            prefixIcon: Icon(
              Icons.lock_outlined,
              color: Color(0xFFA3A5AC),

            ),
            hintText: 'Enter your Password',
            hintStyle: hintTextStyle,
          ),
          validator: (val) => val.isEmpty ? 'Password cannot be null' : null,
          onSaved: (val) => _password = val,
        ),
      );
  }

  Widget _forgotPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Password Button Pressed"),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: labelTextStyle,
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () async {
          print(_email);
          print(_password);
          try{
            String userId = await widget.auth.signIn(_email, _password);
            setState(() {
              _authHint = 'Signed In\n\nUser id: $userId';
            });
            widget.onSignIn();

          }
          catch (e){
            setState(() {
              _authHint = 'Sign In Error\n\n${e.toString()}';
            });
            print(e);
          }
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFF000000),
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            letterSpacing: 2,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  Widget _otherTexts() {
    return Column(
      children: [
        Text(
          ' OR ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(
          height: 20.0,
        ),

        Text(
          'Sign in with',
          style: labelTextStyle,
        )
      ],
    );
  }

  Widget _socialLoginButton(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0,2),
              blurRadius: 6.0,
            ),
          ],

          image: DecorationImage(
            image: logo,
          )
        ),
      ),
    );
  }

  Widget _socialLoginButtonRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _socialLoginButton(
            () => print("Login with Facebook"),
            AssetImage('images/facebook.jpg'),
          ),
          _socialLoginButton(
            () => print("Login with Google"),
            AssetImage('images/google.jpg'),
          ),
        ],
      ),
    );
  }
  
  void _callRegisterScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Register()),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => _callRegisterScreen(),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Color(0xFFF9F9F9),
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Color(0xFFF9F9F9),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF434856),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color(0xFFF9F9F9),
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      _emailTextField(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _passwordTextField(),
                      _forgotPassword(),
                      _loginButton(),
                      _otherTexts(),
                      _socialLoginButtonRow(),
                      _buildSignupBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

