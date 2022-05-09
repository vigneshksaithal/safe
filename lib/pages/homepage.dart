import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/1_passwords/main.dart';

import '../theme/color_scheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 280,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(34),
                  child: Column(
                    children: [
                      Text(
                        'Welcome to SAFE',
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 45, 45, 45),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        'A game about online security',
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 34,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: const Passwords(),
                              ),
                            );
                          },
                          child: const Text('Get started'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
