import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mrydev/myButton.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (const Color(0xffE8E8E8)),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 128 + 32, vertical: 64 + 16),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/mrydev.png'),
                              radius: 96,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Emre',
                              style: TextStyle(
                                color: Color(0xff536163),
                                fontSize: 96,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Flutter Dev / Student',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          color: Color(0xff536163),
                          thickness: 0.1,
                          width: 2,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyButton(
                                  onTap: () async {
                                    // Get the URL from the button
                                    String url = 'https://github.com/mrydev';

                                    // Check if the URL can be launched
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      // Launch the URL
                                      await launchUrl(Uri.parse(url));
                                    } else {
                                      // Throw an error if the URL cannot be launched
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  icon: const Icon(FontAwesome.github),
                                  text: 'Github'),
                              MyButton(
                                  onTap: () async {
                                    // Get the URL from the button
                                    String url =
                                        'https://instagram.com/emreyvz_';

                                    // Check if the URL can be launched
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      // Launch the URL
                                      await launchUrl(Uri.parse(url));
                                    } else {
                                      // Throw an error if the URL cannot be launched
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  icon: const Icon(FontAwesome.instagram),
                                  text: 'Instagram'),
                              MyButton(
                                  onTap: () async {
                                    // Get the email address from the button
                                    String email = 'khapnols@proton.me';

                                    // Check if the email can be launched
                                    if (await canLaunchUrl(
                                        Uri.parse('mailto:$email'))) {
                                      // Launch the email
                                      await launchUrl(
                                          Uri.parse('mailto:$email'));
                                    } else {
                                      // Throw an error if the email cannot be launched
                                      throw 'Could not launch email to $email';
                                    }
                                  },
                                  icon: const Icon(FontAwesome.envelope),
                                  text: 'Email'),
                              MyButton(
                                  onTap: () async {
                                    // Get the URL from the button
                                    String url =
                                        'https://open.spotify.com/user/31dbqjq4jcr63vlwjnpgvemh2rb4?si=a619c4d6bc7f4fd5';

                                    // Check if the URL can be launched
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      // Launch the URL
                                      await launchUrl(Uri.parse(url));
                                    } else {
                                      // Throw an error if the URL cannot be launched
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  icon: const Icon(FontAwesome.spotify),
                                  text: 'Spotify'),
                              MyButton(
                                  onTap: () async {
                                    // Get the URL from the button
                                    String url = 'https://wa.me/905302494535';

                                    // Check if the URL can be launched
                                    if (await canLaunchUrl(Uri.parse(url))) {
                                      // Launch the URL
                                      await launchUrl(Uri.parse(url));
                                    } else {
                                      // Throw an error if the URL cannot be launched
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  icon: const Icon(FontAwesome.whatsapp),
                                  text: 'Message me!'),
                            ]),
                      ],
                    )))));
  }
}
