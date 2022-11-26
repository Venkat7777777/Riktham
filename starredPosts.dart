import 'package:flutter/material.dart';
import 'package:riktam_hackathon/Utilities/constants.dart';

class StarredPosts extends StatefulWidget {
  @override
  _StarredPostsState createState() => _StarredPostsState();
}

class _StarredPostsState extends State<StarredPosts> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFF0F0F0),
              title: Text(
                'Starred Posts',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF200E32),
                ),
              ),
              bottom: TabBar(
                indicatorColor: Color(0xFF200E32),
                tabs: [
                  Tab(child: Text('All Posts', style: tabItemStyle,),),
                  Tab(child: Text('Active', style: tabItemStyle,),),
                  Tab(child: Text('Inactive', style: tabItemStyle,),),
                ],
              ),
            ),

            body: TabBarView(
              children: [
                Container(
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
                        Container(
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '20/100',
                                          style: TextStyle(
                                            color: Color(0xFF200E32),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Active',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '20/100',
                                          style: TextStyle(
                                            color: Color(0xFF200E32),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Active',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '20/100',
                                          style: TextStyle(
                                            color: Color(0xFF200E32),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Active',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '20/100',
                                          style: TextStyle(
                                            color: Color(0xFF200E32),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Active',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '20/100',
                                          style: TextStyle(
                                            color: Color(0xFF200E32),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Inactive',
                                          style: TextStyle(
                                            color: Color(0xFFAF5B6E),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '20/100',
                                          style: TextStyle(
                                            color: Color(0xFF200E32),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Inactive',
                                          style: TextStyle(
                                            color: Color(0xFFAF5B6E),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          '20/100',
                                          style: TextStyle(
                                            color: Color(0xFF200E32),
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          'Inactive',
                                          style: TextStyle(
                                            color: Color(0xFFAF5B6E),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
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
                  ),
                ),
                Container(
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
                        Container(
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
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
                  ),
                ),
                Container(
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
                        Container(
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
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
                          width: size.width*0.90,
                          height: 150,
                          child: InkWell(
                            onTap:  null,
                            child: Card(
                              color: Color(0xFFF0F0F0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: 100,
                                      width: 100,
                                      child: Image(
                                        image: AssetImage('images/blanket.jpg'),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                  SizedBox(
                                    width: size.width*0.05,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                                        alignment: Alignment.centerLeft,
                                        width: size.width*0.45,
                                        height: 30,
                                        padding: EdgeInsets.only(left: 10),
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
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
