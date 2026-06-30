import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Primary Colors - Updated to match Parika logo
  static const Color primaryBrown = Color(0xFF8B4513);
  static const Color darkBrown = Color(0xFF5C2E0F);
  static const Color lightBrown = Color(0xFFD2691E);
  static const Color cream = Color(0xFFFFF8DC);
  
  // New colors from logo - Teal/Turquoise and Lime Green
  static const Color logoBg = Color(0xFF4A8B7C);      // Teal background from logo
  static const Color logoGreen = Color(0xFFCBE63B);   // Lime green leaves from logo
  static const Color gold = Color(0xFFD4AF37);        // Refined gold
  
  // Secondary Colors
  static const Color accentGreen = Color(0xFF2D5016);
  static const Color accentTeal = Color(0xFF4A8B7C);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Color(0xFF757575);
  static const Color lightGrey = Color(0xFFF5F5F5);

  // Text Styles
  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: darkBrown,
  );

  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: darkBrown,
  );

  static TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: darkBrown,
  );

  static TextStyle heading4 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: darkBrown,
  );

  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: black,
  );

  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: black,
  );

  static TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: grey,
  );

  static TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: white,
  );
}