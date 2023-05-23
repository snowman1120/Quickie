import 'package:flutter/material.dart';

import '../../../controllers/walkthrough_controller.dart';
import '../../../routes/routes_names.dart';
import 'widgets/dot_indicator.dart';
import 'widgets/onboarding_elements.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends StateMVC<OnBoardingPage> {
  var _con;
  _OnBoardingPageState() : super(WalkthroughController()) {
    _con = controller;
  }

  @override
  void initState() {
    _con.addListener();
    super.initState();
  }

  Map<int, Map<String, String>> _onBoard = {
    1: {
      'title': 'Browse your menu and order directly',
      'text':
          'Our app can send you everywhere, even space. For only ${2.99} per mont',
    },
    2: {
      'title': 'Even to space with us! Together',
      'text': 'Ven ajumate con nosotros 🥰',
    },
    3: {
      'title': 'Pickup delivery at your door',
      'text':
          'Si no tienes cuarto, no te preocupes... Paga eso con tarjeta y despues se averigua 😊'
    },
  };
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            DotIndicator(count: _onBoard.length),
            PageView.builder(
              onPageChanged: (value) {
                _con.incrementCount(context);
              },
              itemCount: _onBoard.length,
              itemBuilder: (context, index) => OnBoardingElements(
                image: 'assets/gifs/onboarding-${index + 1}.gif',
                title: _onBoard[index + 1]['title'],
                text: _onBoard[index + 1]['text'],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            elevation: 0,
            onPressed: () {
              Navigator.of(context).pushNamed(RouteNames.signupPage);
            },
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
