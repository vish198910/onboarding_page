import 'package:flutter/material.dart';
import 'data.dart';
import "package:gradient_text/gradient_text.dart";
import 'package:onboarding_page/page_indicator.dart';
import 'package:onboarding_page/content.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyOnboardingApp(),
  ));
}

class MyOnboardingApp extends StatefulWidget {
  @override
  _MyOnboardingAppState createState() => _MyOnboardingAppState();
}

class _MyOnboardingAppState extends State<MyOnboardingApp> {
  PageController _controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: currentPage);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.yellow.shade100, Colors.black],
          radius: 1.0,
          stops: [0.3, 1.0],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PageView.builder(
              itemBuilder: (context, index) {
                var page = pageList[index];
                return Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return new NewWidget(page: page);
                        })
                  ],
                );
              },
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              controller: _controller,
              itemCount: pageList.length,
            ),
            Positioned(
              child: Container(
                width: 320.0,
                child: PageIndicator(
                  currentIndex: currentPage,
                  pageCount: pageList.length,
                ),
              ),
              left: 30.0,
              bottom: 55.0,
            )
          ],
        ),
      ),
    );
  }
}
