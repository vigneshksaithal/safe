import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/2_sharing/quiz.dart';
import 'package:safe/pages/3_apps/main.dart';
import 'package:safe/pages/widgets/alert_box.dart';
import 'package:safe/pages/widgets/image_box.dart';
import 'package:safe/pages/widgets/summary_box.dart';
import 'package:safe/theme/color_scheme.dart';

class Sharing extends StatelessWidget {
  const Sharing({Key? key}) : super(key: key);

  static const List<Map> conversation = [
    {
      'speaker': "Caller",
      "message": "Hello, Miss Sarah. I\'m calling from XYZ Bank.",
    },
    {
      'speaker': "Sarah",
      "message": "Hi",
    },
    {
      'speaker': "Caller",
      "message":
          "As you have a bank account with us I wanted you to know that your Credit Card is expiring.",
    },
    {
      'speaker': "Sarah",
      "message": "Hmm! OK",
    },
    {
      'speaker': "Caller",
      "message":
          "So, could you share your Credit Card detials so that I can issue a new one instantly?",
    },
    {
      'speaker': "Sarah",
      "message": "Yeah! No problem",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme().background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Think before Sharing',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var call in conversation)
                            Row(
                              children: [
                                Text(
                                  '${call['speaker']}:',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    '${call['message']}',
                                    style: const TextStyle(
                                      fontSize: 17.4,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                          const Text(
                            '[Then Sarah shares all the details with the caller. Then ...]',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'GAME OVER',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Soon, Sarah loses \$10,000 from her bank account.',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AlertBox(
                  title: 'Lesson!',
                  description:
                      'Never share your password/OTP/Bank details with anyone even if they claim to be bank official. Bank NEVER asks for these details.',
                ),
                const SizedBox(height: 10),
                const ImageBox(imageAddress: 'assets/cyber-security.gif'),
                const SizedBox(height: 10),
                SummaryBox(
                  description:
                      'Sharing is caring, but not your passwords. Don\'t ever share your passwords or any of your bank details.',
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: const SharingQuiz(),
                      ),
                    );
                  }),
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
