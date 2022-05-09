import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/4_emails/quiz.dart';
import 'package:safe/pages/widgets/alert_box.dart';
import 'package:safe/pages/widgets/image_box.dart';
import 'package:safe/pages/widgets/summary_box.dart';
import '/theme/color_scheme.dart';

class Emails extends StatelessWidget {
  const Emails({Key? key}) : super(key: key);

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
                    'Open, Click and Boom!',
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
                              'Electronic-Mail',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 69, 69, 69),
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          Text(
                            'Everyday bilions of emails are read all over the world. We use emails as a formal communication method.',
                          ),
                          SizedBox(height: 18),
                          Text(
                            'But, there are also emails which end up spam box. But, few gets pass through that also and gets into inbox.',
                          ),
                          SizedBox(height: 18),
                          Text(
                            'Every year thousands of accounts are taken down due to phishing attack. And thes phishing attacks are done using emails.',
                          ),
                          SizedBox(height: 18),
                          Text(
                            'Below image shows how a phishing email looks like.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ImageBox(imageAddress: 'assets/phishing-email.png'),
                  const SizedBox(height: 10),
                  AlertBox(
                    title: 'Beware of unknown emails',
                    description: 'Be careful while opening unknown emails.',
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
                              'Two Rules before you open an email',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 62, 62, 62),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            '1. Verify Email Sender',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Check the sender address of any email that invites you to click a link or open an attachment. Look for misspellings of domain names or discrepancies between the display name and the actual sender\'s email address.',
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '2. Skip the Links',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Some deals can be too good to be true. Beware of lookalike sites that boast savings and hard-to-find products. Even if the website or email looks legit, open a new browser whenever possible to visit the real eCommerce site directly rather than clicking on links through an email.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SummaryBox(
                    description:
                        'Before opening a email check whether the sender is of same organization or is genuine one. And if it\'s from a unknown person then don\'t click or download any files.',
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: const EmailsQuiz(),
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
