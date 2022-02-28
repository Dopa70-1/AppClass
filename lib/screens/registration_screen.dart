import 'package:app_class/screens/onboarding_screen.dart';
import 'package:app_class/widgets/cutsom_button.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 100.0,
          ),
          Image.asset("images/logo.png", height: 300, width: 300,),
          const SizedBox(
            height: 25.0,
          ),
          CustomButton(text: 'Register',
            onPress: (){

            },
            elevation: 5.0, edgeRadius: 10, height: 60, width: 300, textFontSize: 30,),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Old member?', style: Theme.of(context).textTheme.bodyText2,),
              TextButton(onPressed: () {}, child: Text('Sign up.', style: Theme.of(context).textTheme.bodyText1,))
            ],
          ),
        ],
      )),
    );
  }
}
