import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constaint.dart';

AppBar customAppBar(String text) {
  return AppBar(
    backgroundColor: kPrimaryColor,
    centerTitle: true,
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 25,
    ),
    title: Text(
      text,
      style: GoogleFonts.tajawal(
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    ),
  );
}
