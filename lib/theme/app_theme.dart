import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Primary Colors - Leaf Green Palette
  static const Color primaryGreen = Color(0xFF7CB342);      // Leaf Green
  static const Color darkGreen = Color(0xFF558B2F);         // Dark Forest Green
  static const Color lightGreen = Color(0xFFA1CF64);        // Light Green
  
  // Secondary Colors - Gold Palette
  static const Color deepGold = Color(0xFFD4AF37);          // Deep Gold
  static const Color antiqueGold = Color(0xFFB8956A);       // Antique Gold
  static const Color champagneGold = Color(0xFFE8DCC4);     // Champagne Gold
  
  // Accent Colors
  static const Color burgundy = Color(0xFF8B3A3A);          // Burgundy/Wine
  static const Color richBrown = Color(0xFF6B4423);         // Rich Brown
  static const Color accentPurple = Color(0xFF7B6BA8);      // Purple (Rapthi)
  static const Color warmOrange = Color(0xFFD97E3D);        // Warm Orange-Red
  
  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite = Color(0xFFFAF9F6);
  static const Color lightCream = Color(0xFFF5F3F0);
  static const Color charcoal = Color(0xFF2C2C2C);
  static const Color darkGray = Color(0xFF4A4A4A);
  static const Color mediumGray = Color(0xFF757575);
  static const Color lightGray = Color(0xFFF0EDE9);

  // Text Styles with Elegant Fonts
  static TextStyle heading1 = GoogleFonts.playfairDisplay(
    fontSize: 56,
    fontWeight: FontWeight.bold,
    color: charcoal,
    letterSpacing: 0.5,
  );

  static TextStyle heading2 = GoogleFonts.playfairDisplay(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: charcoal,
    letterSpacing: 0.3,
  );

  static TextStyle heading3 = GoogleFonts.cormorantGaramond(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: charcoal,
  );

  static TextStyle heading4 = GoogleFonts.cormorantGaramond(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: charcoal,
  );

  static TextStyle heading5 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: charcoal,
  );

  static TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: darkGray,
    height: 1.6,
  );

  static TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: darkGray,
    height: 1.5,
  );

  static TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: mediumGray,
  );

  static TextStyle caption = GoogleFonts.poppins(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: mediumGray,
  );

  static TextStyle buttonText = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: white,
  );

  static TextStyle buttonTextSecondary = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: deepGold,
  );

  // Shadows
  static BoxShadow softShadow = BoxShadow(
    color: Colors.black.withOpacity(0.08),
    blurRadius: 12,
    offset: const Offset(0, 4),
  );

  static BoxShadow mediumShadow = BoxShadow(
    color: Colors.black.withOpacity(0.12),
    blurRadius: 20,
    offset: const Offset(0, 8),
  );

  static BoxShadow largeShadow = BoxShadow(
    color: Colors.black.withOpacity(0.15),
    blurRadius: 30,
    offset: const Offset(0, 12),
  );

  // Border Radius
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXL = 20.0;
}