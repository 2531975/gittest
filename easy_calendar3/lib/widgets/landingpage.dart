import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_calendar3/widgets/signup.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  List<Widget> loadWidgets(double width, BuildContext context) {
    return [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Scheduling made",
              style: TextStyle(
                color: CupertinoColors.darkBackgroundGray,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const Text(
              "easy",
              style: TextStyle(
                  color: CupertinoColors.activeBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: "Hind"),
            ),
            const Text(
              "Easycalendar is an online scheduling platform that makes it easier to schedule and manage appointments,meetings - and so much more",
              style: TextStyle(fontFamily: "Hind", fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: CupertinoColors.activeBlue,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      color: CupertinoColors.extraLightBackgroundGray),
                ),
              ),
            )
          ],
        ),
      ),
      const Image(
        image: AssetImage("assets/images/Scheduling-image.png"),
        width: 400,
        height: 400,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: loadWidgets(constraints.biggest.width / 2, context),
        );
      }
      return Column(
        children: loadWidgets(constraints.biggest.width, context),
      );
    });
  }
}
