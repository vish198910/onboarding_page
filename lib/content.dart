import 'package:flutter/material.dart';
import 'package:onboarding_page/data.dart';
import 'package:gradient_text/gradient_text.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    @required this.page,
  });

  final PageModel page;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(page.image),
        Container(
          margin: EdgeInsets.only(left: 12.0),
          height: 100.0,
          child: Stack(
            children: <Widget>[
              Opacity(
                child: GradientText(
                  page.title,
                  gradient: LinearGradient(colors: page.titleGradient),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 70.0,
                      fontFamily: "Montserrat",
                      letterSpacing: 1.0),
                ),
                opacity: 0.1,
              ),
              GradientText(
                page.title,
                gradient: LinearGradient(colors: page.titleGradient),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 55.0,
                    fontFamily: "Montserrat",
                    letterSpacing: 1.0),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 22.0),
          child: GradientText(
            page.bodyText,
            gradient: LinearGradient(colors: page.titleGradient),
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),
          ),
        )
      ],
    );
  }
}
