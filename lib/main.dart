import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: const Text(
              'Welcome to my portfolio!',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          MaterialButton(
            child: const Text('View My Resume'),
            onPressed: () {
              launchUrl(
                Uri.parse(
                  'https://docs.google.com/document/d/18xX5eCOfzL-kWUkTz5YYn8uzJ5POvfPlBIYRVexG1Z4/edit',
                ),
              );
            },
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                      'https://github.com/VatsalBhesaniya',
                    ),
                  );
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                      'https://www.linkedin.com/in/vatsalbhesaniya/',
                    ),
                  );
                },
              ),
              const SizedBox(width: 16.0),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                      'https://twitter.com/vatsalbhesaniya',
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
