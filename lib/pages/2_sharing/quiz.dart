import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/3_apps/main.dart';
import 'package:safe/pages/widgets/score_progress_bar.dart';
import 'package:safe/pages/widgets/success_box.dart';
import 'package:safe/providers/score.dart';

final sharingQuizAnswerProvider = StateProvider<bool>((ref) {
  return false;
});

class SharingQuiz extends ConsumerWidget {
  const SharingQuiz({Key? key}) : super(key: key);

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
              if (ref.watch(sharingQuizAnswerProvider) == true)
                SuccessBox(
                    title: 'Wow, You\'re a master! It\'s the right answer.',
                    description:
                        'You should NEVER share passwords, bank details, credit card number, CVV, etc'),
              const Expanded(
                child: SizedBox(height: 140),
              ),
              Text(
                'Choose things below which you shouldn\'t share with anyone',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 80,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Lunch food'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Funny moments'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  ref.read(sharingQuizAnswerProvider.notifier).state = true;
                  ref.read(scoreProvider.notifier).state++;
                },
                child: const Text('Passwords, Bank details, etc'),
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
                      child: const Apps(),
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
