import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mrydev/Utils/my_button.dart';
import 'package:mrydev/Utils/text_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(children: [
            CircleAvatar(
              backgroundImage: AssetImage(TextUtils().circleAvatar),
              radius: 64,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              TextUtils().name,
              style: const TextStyle(
                color: Color(0xff536163),
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              TextUtils().job,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            MyMobileButton(
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
                icon: const Icon(FontAwesome.github),
                text: 'Github'),
            MyMobileButton(
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
                icon: const Icon(FontAwesome.instagram),
                text: 'Instagram'),
            MyMobileButton(
                onTap: () async {
                  // Get the email address from the button
                  String email = TextUtils().email;

                  // Check if the email can be launched
                  if (await canLaunchUrl(Uri.parse('mailto:$email'))) {
                    // Launch the email
                    await launchUrl(Uri.parse('mailto:$email'));
                  } else {
                    // Throw an error if the email cannot be launched
                    throw 'Could not launch email to $email';
                  }
                },
                icon: const Icon(FontAwesome.envelope),
                text: 'Email'),
            MyMobileButton(
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
                icon: const Icon(FontAwesome.spotify),
                text: 'Spotify'),
            // MyMobileButton(
            //     onTap: () async {
            //       // Get the URL from the button
            //       String url = TextUtils().message;

            //       // Check if the URL can be launched
            //       if (await canLaunchUrl(Uri.parse(url))) {
            //         // Launch the URL
            //         await launchUrl(Uri.parse(url));
            //       } else {
            //         // Throw an error if the URL cannot be launched
            //         throw 'Could not launch $url';
            //       }
            //     },
            //     icon: const Icon(FontAwesome.whatsapp),
            //     text: 'Message me!'),
          ]),
        )),
      ),
    );
  }
}
