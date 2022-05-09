import 'package:flutter/material.dart';
import 'package:safe/pages/1_passwords/quiz.dart';
import 'package:safe/pages/widgets/alert_box.dart';
import 'package:safe/pages/widgets/image_box.dart';
import 'package:safe/pages/widgets/summary_box.dart';
import 'package:safe/theme/color_scheme.dart';

class Passwords extends StatelessWidget {
  const Passwords({Key? key}) : super(key: key);

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
                    'Passwords',
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
                            'Everyone needs a password, so here are the 3 tips to making your password stronger',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800]),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '1. Longer passwords are better',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '8 characters are a great place to start when creating a strong password, but longer logins are better.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '2. Don\'t recycle your passwords',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'It\'s worth repeating that reusing passwords across different accounts is a terrible idea. If someone uncovers your reused password for one account, they have the key to every other account you use that password for. ',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '3. Use a password manager to keep track of your passwords',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Memorizing passwords can be a hassle, its where password managers becomes helpful. With  a password manager you can save all passwords in one locaation.',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const ImageBox(imageAddress: 'assets/strong-password.jpg'),
                const SizedBox(height: 10),
                AlertBox(
                  title: 'Don\'t use memorable keyboard paths',
                  description:
                      'Much like the advice above not to use sequential letters and numbers, do not use sequential keyboard paths either (like qwerty). These are among the first to be guessed.',
                ),
                const SizedBox(height: 10),
                SummaryBox(
                  description:
                      'Keep your passwords consisting of letters, numbers and characters.',
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordQuiz(),
                      ),
                    );
                  }),
                  child: const Text('Continue'),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
