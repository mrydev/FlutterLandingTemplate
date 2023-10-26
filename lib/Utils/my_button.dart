import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Widget icon;

  const MyButton(
      {super.key, required this.onTap, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 64,
          width: screenSize.width * 0.25,
          decoration: BoxDecoration(
            color: const Color(0xffA1683A),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffE8F5F7),
                      )),
                  icon,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyMobileButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Widget icon;

  const MyMobileButton(
      {super.key, required this.onTap, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: const Color(0xffE8F5F7),
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff536163),
                      )),
                  icon,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
