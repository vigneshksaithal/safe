import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/3_apps/quiz.dart';
import 'package:safe/pages/4_emails/main.dart';
import 'package:safe/pages/widgets/alert_box.dart';
import 'package:safe/pages/widgets/image_box.dart';
import 'package:safe/pages/widgets/summary_box.dart';
import 'package:safe/theme/color_scheme.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorScheme().background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Apps, Apps & Apps',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'A story on Apps',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 20),
                          const SizedBox(height: 6),
                          Text(
                            'App A was built by X company.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'App B was built by Y company.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Both apps had same functionality but, one used very few permissions and other(B app) used unnecessary permissions which was not required for the functionality.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'So, apps functionality may be same but, the way they work may be differnt.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SummaryBox(
                  description:
                      'While insstalling an app check whether it asks for unnecessary permissions, if yes then do not install it. Try for other apps.',
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: const AppsQuiz(),
                      ),
                    );
                  }),
                  child: const Text('Continue'),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
