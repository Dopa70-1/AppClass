import 'dart:async';
import 'package:app_class/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = Duration(seconds: 6);
    return Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const OnBoardingScreen()
    )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 125.0,
                    ),
                    Image.asset("images/logo.png", height: 150, width: 150,),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text('COMPANY',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text('WE ARE THE BEST',
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,),
                  ],
                ),
                Column(
                  children: [
                    Text('©2022 Dopa70-1 India, Inc. All rights reserved.\nPrivacy Policy | Terms of Use',
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,),
                    const SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ],
            )
        ));
  }
}
