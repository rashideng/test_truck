import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:truck/app_image.dart';
import 'package:truck/login.dart';

import 'package:truck/onboarding_model.dart.dart';

// import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:truck/onboarding_page.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<OnBoardingModel> _onBoardingList = [
    OnBoardingModel(
        title: "Truck",
        description:
            "This is the project that we can see the real time temperature and humidity in side of the truck ",
        image: AppImage.truck1),
    OnBoardingModel(
        title: "RealTime",
        description:
            "We Can confirm the cooling and check whether It;s working Or no LoL",
        image: AppImage.truck2),
    OnBoardingModel(
        title: "GPS",
        description:
            "We Can see the Real time GPS of the User Easily.So Dont need to use another application for that",
        image: AppImage.truck3),
  ];

  int selectedIndex = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      // color: selectedIndex == 0 ? Colors.black12 : Colors.purpleAccent[100],
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [
                          Color(0xFF3594DD),
                          Color(0xFF4563DB),
                          Color(0xFF5036D5),
                          Color(0xFF5B16D0),
                        ],
                      ),
                    ),
                    child: _containerPaginationWidget(),
                  ),
                ),
                _indicatorWidget(),
                _buttonWidget(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _containerPaginationWidget() {
    return PageView.builder(
        controller: controller,
        itemCount: _onBoardingList.length,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Container(
            // color: Colors.black12,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cooler Truck Monitering System",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset(_onBoardingList[index].image),
                SizedBox(
                  height: 20,
                ),
                Text(
                  _onBoardingList[index].title,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    _onBoardingList[index].description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget _indicatorWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: ExpandingDotsEffect(
            spacing: 13.0,
            dotWidth: 10.0,
            dotHeight: 10.0,
            dotColor: Colors.indigo,
            activeDotColor: Colors.indigo[900]),
      ),
    );
  }

  Widget _buttonWidget() {
    return Container(
      height: 50.0,
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.indigo[900],
                  Colors.indigo[800],
                  Colors.blue,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Continue",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
