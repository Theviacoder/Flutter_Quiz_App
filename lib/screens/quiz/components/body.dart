import 'package:flutter/material.dart';
import 'package:quizapp/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'progressBar.dart';

class body extends StatelessWidget {
  const body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: WebsafeSvg.asset("assets/bg.svg", fit: BoxFit.fill),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [ProgressBar()],
          ),
        ))
      ],
    );
  }
}
