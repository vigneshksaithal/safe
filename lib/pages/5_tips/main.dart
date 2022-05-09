import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:safe/pages/6_browsing/main.dart';

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

  static List<Map> tips = [
    {
      'title': 'Get the latest anti-virus and firewall software',
      'description':
          'Download updates regularly to make sure you\'re protected against any new online threats.',
    },
    {
      'title': 'Update your internet browser',
      'description':
          'The latest versions have built-in protection against fake websites and viruses.',
    },
    {
      'title': 'Limit Technology Use',
      'description':
          'Use an app like Apple\'s Screen Time to monitor and restrict phone, tablet and computer use. Similar apps exist for Android phones and other devices.'
    },
    {
      'title': 'Use Multi-factor authentication',
      'description':
          'Wherever possible use Multi-factor authentication as it provides much more security.'
    },
    {
      'title': 'Avoid posting current locations on social media',
      'description':
          'Putting current locations on social media tells hackers about your loaction and leading to damage.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text(
                          '5 Tips to safeguard yourself from hackers',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 101, 101, 101),
                          ),
                        ),
                        const SizedBox(height: 28),
                        for (var tip in tips)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${tip['title']}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '${tip['description']}',
                              ),
                              const SizedBox(height: 28),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const Browsing(),
                    ),
                  );
                }),
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
