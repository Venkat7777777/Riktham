import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riktam_hackathon/Utilities/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: size.width*0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                    Container(
                      width: size.width*0.45,
                      height: 200,
                      child: InkWell(
                        onTap:  null,
                        child: Card(
                          color: Color(0xFFF0F0F0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  child: Image(
                                    image: AssetImage('images/blanket.jpg'),
                                    fit: BoxFit.fill,
                                  )
                              ),
                              Container(
                                width: size.width*0.45,
                                height: 30,
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Blankets',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: size.width*0.45,
                                height: 30,
                                child: Text(
                                  '20/100',
                                  style: TextStyle(
                                    color: Color(0xFF200E32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      ),

                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
