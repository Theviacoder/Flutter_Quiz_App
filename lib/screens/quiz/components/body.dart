import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/controllers/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'questionCard.dart';
import 'progressBar.dart';

class body extends StatelessWidget {
  const body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: WebsafeSvg.asset("assets/bg.svg", fit: BoxFit.fill),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text: "Question ${_questionController.questionNumber.value} ",
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: "${_questionController.questions.length}",
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: kSecondaryColor),
                          )
                        ],
                      ),
                    ),
                  )),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  onPageChanged: _questionController.updateTheQnNum,
                  controller: _questionController.pageController,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
