import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:safe/pages/2_sharing/main.dart';
import 'package:safe/pages/2_sharing/quiz.dart';
import 'package:safe/pages/widgets/score_progress_bar.dart';
import 'package:safe/pages/widgets/success_box.dart';
import 'package:safe/providers/score.dart';

final passwordQuizAnswerProvider = StateProvider<bool>((ref) {
  return false;
});

class PasswordQuiz extends ConsumerWidget {
  const PasswordQuiz({Key? key}) : super(key: key);

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
              if (ref.watch(passwordQuizAnswerProvider) == true)
                SuccessBox(
                    title: 'Hurray:) It\'s the right answer.',
                    description:
                        'Keeping password which has a combination of lowercase, uppercase, special characters, numbers drastically decreases the probability of a account being hacked.'),
              const Expanded(
                child: SizedBox(height: 140),
              ),
              Text(
                'Choose the best password from below',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 80,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('12345678'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('10MAY2001'),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  ref.read(passwordQuizAnswerProvider.notifier).state = true;
                  ref.read(scoreProvider.notifier).state++;
                },
                child: const Text('VGnesh@2k1_b!rr'),
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
                      child: const Sharing(),
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
