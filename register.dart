import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riktam_hackathon/Utilities/constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  Widget _nameTextField() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: TextField(
        keyboardType: TextInputType.name,
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
            Icons.account_circle_outlined,
            color: Color(0xFFA3A5AC),
          ),
          hintText: 'Enter your Full Name',
          hintStyle: hintTextStyle,
        ),
      ),
    );
  }

  Widget _mobileNumberTextField() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: TextField(
        keyboardType: TextInputType.name,
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
            Icons.call_outlined,
            color: Color(0xFFA3A5AC),
          ),
          hintText: 'Enter your Mobile Number',
          hintStyle: hintTextStyle,
        ),
      ),
    );
  }

  Widget _emailTextField() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: TextField(
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
      ),

    );
  }

  Widget _passwordTextField() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: TextField(
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
      ),
    );
  }

  Widget _confirmPasswordTextField() {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60.0,
      child: TextField(
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
          hintText: 'Confirm your Password',
          hintStyle: hintTextStyle,
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xFF000000),
        child: Text(
          'SIGN UP',
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
          height: 5.0,
        ),

        Text(
          'Sign up with',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
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
                    vertical: 60.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xFFF9F9F9),
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      _nameTextField(),
                      SizedBox(height: 10.0),
                      _mobileNumberTextField(),
                      SizedBox(height: 10.0),
                      _emailTextField(),
                      SizedBox(height: 10.0),
                      _passwordTextField(),
                      SizedBox(height: 10.0),
                      _confirmPasswordTextField(),
                      SizedBox(height: 10.0),
                      _signUpButton(),
                      SizedBox(height: 5.0),
                      _otherTexts(),
                      SizedBox(height: 5.0),
                      _socialLoginButtonRow()


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
