import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategory extends StatelessWidget {
  const MyCategory(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color});
  final Function() onTap;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
        height: MediaQuery.of(context).size.height * (1 / 14),
        width: MediaQuery.of(context).size.width * (2 / 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xffD1D0D0),
            width: 1.5,
          ),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            text,
            style: GoogleFonts.cairo(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
