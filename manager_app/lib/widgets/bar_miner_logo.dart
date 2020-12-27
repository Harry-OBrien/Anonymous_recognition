import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarMinerLogo extends StatelessWidget {
  BarMinerLogo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "BAR",
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.8,
                height: 1.1,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              "MINER.",
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.8,
                  height: 1.1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
