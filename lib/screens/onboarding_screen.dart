import 'package:app_class/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Container(
      height: 10,
      width: isActive ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFEEEEEE),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _currentPage == 0 ? 'Good morning!' : '',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const RegistrationScreen();
                      }));
                    },
                    child: Text(
                      'Skip',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Center(
                            child: Image(
                              image: AssetImage(
                                'images/logo.png',
                              ),
                              height: 250.0,
                              width: 400.0,
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Text(
                            'Step 1',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Do you even code bro? If yes then find the missing semicolon of your life.',
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Center(
                            child: Image(
                              image: AssetImage(
                                'images/logo.png',
                              ),
                              height: 250.0,
                              width: 400.0,
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Text(
                            'Step 2',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Why do programmers quit their jobs? Because they didn\'t get arrays.',
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Center(
                            child: Image(
                              image: AssetImage(
                                'images/logo.png',
                              ),
                              height: 250.0,
                              width: 400.0,
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Text(
                            'Step 3',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Why database\'s wife leave him? Because he had one to many relationship.',
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomRight,
                  child: TextButton(
                    onPressed: _currentPage!=_numPages-1 ? () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } : () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const RegistrationScreen();
                      }));
                    } ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          _currentPage!=_numPages-1 ? 'Next' : 'Let\'s go',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(width: 10.0),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF222831),
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
