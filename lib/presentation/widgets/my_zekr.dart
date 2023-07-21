import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moshaf_api/utils/constaint.dart';

class MyZekr extends StatelessWidget {
  const MyZekr(
      {super.key,
      required this.zekr,
      required this.count,
      required this.onTap,
      required this.color,
      required this.description,
      required this.reference,
      required this.bookmark});
  final String zekr;
  final int count;
  final Function() onTap;
  final Color color;
  final String description;
  final String reference;
  final Function() bookmark;

  @override
  Widget build(BuildContext context) {
    print(zekr);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      //  child: Text(widget.zekr),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Text(
            textDirection: TextDirection.rtl,
            zekr,
            style: GoogleFonts.scheherazadeNew(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              height: 1.8,
              letterSpacing: .2,
            ),
          ),
          const Spacer(flex: 1),
          Text(
            reference,
            style: GoogleFonts.scheherazadeNew(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(
            flex: 6,
          ),
          Text(
            textDirection: TextDirection.rtl,
            description,
            style: GoogleFonts.scheherazadeNew(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(
            flex: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              FloatingActionButton(
                shape: const CircleBorder(),
                backgroundColor: color,
                onPressed: onTap,
                child: Text(
                  '$count',
                  style: GoogleFonts.cairo(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: bookmark,
                shape: const CircleBorder(),
                backgroundColor: kPrimaryColor,
                child: const Icon(
                  Icons.bookmark_outline,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
