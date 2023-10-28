import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mrydev/Utils/my_button.dart';
import 'package:mrydev/Utils/text_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: (const Color(0xfffbf7f4)),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 32, right: 32, top: 64, bottom: 32),
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(TextUtils().circleAvatar),
                                radius:
                                    MediaQuery.of(context).size.width * 0.07,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                TextUtils().name,
                                style: const TextStyle(
                                  color: Color(0xffA1683A),
                                  fontSize: 64,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                TextUtils().job,
                                style: const TextStyle(
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
                                      String url = TextUtils().github;

                                      // Check if the URL can be launched
                                      if (await canLaunchUrl(Uri.parse(url))) {
                                        // Launch the URL
                                        await launchUrl(Uri.parse(url));
                                      } else {
                                        // Throw an error if the URL cannot be launched
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    icon: const Icon(
                                      FontAwesome.github,
                                      color: Color(0xffE8F5F7),
                                    ),
                                    text: 'Github'),
                                MyButton(
                                    onTap: () async {
                                      // Get the URL from the button
                                      String url = TextUtils().instagram;

                                      // Check if the URL can be launched
                                      if (await canLaunchUrl(Uri.parse(url))) {
                                        // Launch the URL
                                        await launchUrl(Uri.parse(url));
                                      } else {
                                        // Throw an error if the URL cannot be launched
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    icon: const Icon(
                                      FontAwesome.instagram,
                                      color: Color(0xffE8F5F7),
                                    ),
                                    text: 'Instagram'),
                                MyButton(
                                    onTap: () async {
                                      // Get the email address from the button
                                      String email = TextUtils().email;

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
                                    icon: const Icon(
                                      FontAwesome.envelope,
                                      color: Color(0xffE8F5F7),
                                    ),
                                    text: 'Email'),
                                MyButton(
                                    onTap: () async {
                                      // Get the URL from the button
                                      String url = TextUtils().spotify;
                                      // Check if the URL can be launched
                                      if (await canLaunchUrl(Uri.parse(url))) {
                                        // Launch the URL
                                        await launchUrl(Uri.parse(url));
                                      } else {
                                        // Throw an error if the URL cannot be launched
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    icon: const Icon(
                                      FontAwesome.spotify,
                                      color: Color(0xffE8F5F7),
                                    ),
                                    text: 'Spotify'),
                                // MyButton(
                                //     onTap: () async {
                                //       // Get the URL from the button
                                //       String url = TextUtils().message;

                                //       // Check if the URL can be launched
                                //       if (await canLaunchUrl(
                                //           Uri.parse(url))) {
                                //         // Launch the URL
                                //         await launchUrl(Uri.parse(url));
                                //       } else {
                                //         // Throw an error if the URL cannot be launched
                                //         throw 'Could not launch $url';
                                //       }
                                //     },
                                //     icon: const Icon(
                                //       FontAwesome.whatsapp,
                                //       color: Color(0xffE8F5F7),
                                //     ),
                                //     text: 'Message!'),
                              ]),
                        ],
                      )))),
        ));
  }
}
