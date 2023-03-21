//^ fonts
import 'package:chatea_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text textHeadType(String text) => Text(
      text,
      style: GoogleFonts.acme(fontSize: 20, color: kWhite),
    );
Text textsimpleType(String text) => Text(
      text,
      style: GoogleFonts.acme(fontSize: 14, color: kWhite),
    );
Text textTitle(String text) => Text(
      text,
      style: GoogleFonts.abel(fontSize: 20),
    );
Text textSubTitle(String text) => Text(
      text,
      style: GoogleFonts.abel(fontSize: 10),
    );
