import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/5_tips/main.dart';
import 'package:safe/pages/7_summary/main.dart';
import 'package:safe/pages/widgets/score_progress_bar.dart';
import 'package:safe/pages/widgets/success_box.dart';
import 'package:safe/providers/score.dart';

final browsingQuizAnswerProvider = StateProvider<bool>((ref) {
  return false;
});

class BrowsingQuiz extends ConsumerWidget {
  const BrowsingQuiz({Key? key}) : super(key: key);

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
              if (ref.watch(browsingQuizAnswerProvider) == true)
                SuccessBox(
                  title: 'Great! You answered it correctly!',
                  description:
                      'We should not share details in HTTP sites as it is not safe compared to HTTPS.',
                ),
              const Expanded(
                child: SizedBox(height: 140),
              ),
              Text(
                'Is it safe to share details on HTTP sites?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 80,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('YES'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  ref.read(browsingQuizAnswerProvider.notifier).state = true;
                  ref.read(scoreProvider.notifier).state++;
                },
                child: const Text('NO'),
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
                      child: const Summary(),
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
