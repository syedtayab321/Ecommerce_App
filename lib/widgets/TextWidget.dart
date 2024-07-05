import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  const TextWidget({
    required this.title,
    this.color,
    this.size,
    this.weight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}