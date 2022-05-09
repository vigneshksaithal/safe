import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/4_emails/quiz.dart';
import 'package:safe/pages/6_browsing/quiz.dart';
import 'package:safe/pages/widgets/alert_box.dart';
import 'package:safe/pages/widgets/image_box.dart';
import 'package:safe/pages/widgets/summary_box.dart';
import '/theme/color_scheme.dart';

class Browsing extends StatelessWidget {
  const Browsing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme().background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'Browse the World',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Everyone have one thing in common. They all browse.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 69, 69, 69),
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            'Browsing is not just about opening Chrome or Safari and searching it.',
                          ),
                          SizedBox(height: 18),
                          Text(
                            'Everyday millions of articles are published and among them some of them may be opinions, some of them untrue, etc.',
                          ),
                          SizedBox(height: 18),
                          Text(
                            'So, you should be able to understand whether the article is legit and to check if it is from a reputed source.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ImageBox(
                    imageAddress: 'assets/google-safe-browsing.jpg',
                  ),
                  const SizedBox(height: 10),
                  AlertBox(
                    title: 'Do Research',
                    description:
                        'Before coming to a conclusion about a topic, make sure you go through 10 or more articles so that you get real knowledge not some opinions',
                  ),
                  const SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Being safe on websites',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 62, 62, 62),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            '1. Use antivirus',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Using an antivirus helps you avoid visiting malicious sites. And it also warns if you were to download a infected file.',
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '2. Check for HTTPS',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'While broswing make sure the website you are visiting has https. It provides additional layer of security',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ImageBox(
                    imageAddress: 'assets/https.webp',
                  ),
                  const SizedBox(height: 10),
                  SummaryBox(
                    description:
                        'Research thoroughly and see for https while broswing.',
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: const BrowsingQuiz(),
                        ),
                      );
                    }),
                    child: const Text('Continue'),
                    style: ElevatedButton.styleFrom(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
