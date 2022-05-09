import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/3_apps/main.dart';
import 'package:safe/pages/4_emails/main.dart';
import 'package:safe/pages/widgets/score_progress_bar.dart';
import 'package:safe/pages/widgets/success_box.dart';
import 'package:safe/providers/score.dart';

final appsQuizAnswerProvider = StateProvider<bool>((ref) {
  return false;
});

class AppsQuiz extends ConsumerWidget {
  const AppsQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 50),
              ProgressBar(percentage: ref.watch(scoreProvider) / 7),
              const SizedBox(height: 20),
              if (ref.watch(appsQuizAnswerProvider) == true)
                SuccessBox(
                  title: 'Hatrick! You answered all three questions correctly!',
                  description:
                      'While downloading an app from Play store or App Store make sure you see which all permissions it requires.',
                ),
              const Expanded(
                child: SizedBox(height: 140),
              ),
              Text(
                'From below select an app which needs gallery permission',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 80,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Music app'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  ref.read(appsQuizAnswerProvider.notifier).state = true;
                  ref.read(scoreProvider.notifier).state++;
                },
                child: const Text('Photos app'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Call app'),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const Emails(),
                    ),
                  );
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
