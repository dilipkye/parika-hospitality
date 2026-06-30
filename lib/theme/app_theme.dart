import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // ============ PRIMARY COLORS - COASTAL THEME ============
  // Ocean/Teal Blue - Primary brand color
  static const Color oceanBlue = Color(0xFF006B8F);           // Deep Ocean Blue
  static const Color tealBlue = Color(0xFF0095B6);            // Vibrant Teal
  static const Color lightTeal = Color(0xFF20B2AA);           // Light Sea Green
  static const Color skyBlue = Color(0xFF87CEEB);             // Sky Blue
  
  // ============ SECONDARY COLORS - SANDY/CREAM ============
  static const Color sandBeige = Color(0xFFC9B8A3);           // Sandy Beige
  static const Color warmCream = Color(0xFFF4E8D8);           // Warm Cream
  static const Color lightSand = Color(0xFFFAF5F0);           // Very Light Sand
  
  // ============ ACCENT COLORS - COASTAL VIBES ============
  static const Color coral = Color(0xFFFF6B6B);               // Coral Red
  static const Color warmSand = Color(0xFFD4A574);            // Warm Sand
  static const Color seashellPink = Color(0xFFFFB6C1);        // Seashell Pink
  static const Color oceanGreen = Color(0xFF2F7F7F);          // Deep Ocean Green
  
  // ============ NEUTRAL COLORS ============
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite = Color(0xFFFBF9F7);
  static const Color charcoal = Color(0xFF1A1A1A);
  static const Color darkGray = Color(0xFF3D3D3D);
  static const Color mediumGray = Color(0xFF757575);
  static const Color lightGray = Color(0xFFE8E8E8);
  
  // ============ TEXT STYLES - ELEGANT COASTAL ============
  static TextStyle heading1 = GoogleFonts.playfairDisplay(
    fontSize: 56,
    fontWeight: FontWeight.bold,
    color: oceanBlue,
    letterSpacing: 0.5,
  );

  static TextStyle heading2 = GoogleFonts.playfairDisplay(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: oceanBlue,
    letterSpacing: 0.3,
  );

  static TextStyle heading3 = GoogleFonts.cormorantGaramond(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: tealBlue,
  );

  static TextStyle heading4 = GoogleFonts.cormorantGaramond(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: tealBlue,
  );

  static TextStyle heading5 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: oceanBlue,
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
    color: tealBlue,
  );

  // ============ SHADOWS ============
  static BoxShadow softShadow = BoxShadow(
    color: oceanBlue.withOpacity(0.08),
    blurRadius: 12,
    offset: const Offset(0, 4),
  );

  static BoxShadow mediumShadow = BoxShadow(
    color: oceanBlue.withOpacity(0.12),
    blurRadius: 20,
    offset: const Offset(0, 8),
  );

  static BoxShadow largeShadow = BoxShadow(
    color: oceanBlue.withOpacity(0.15),
    blurRadius: 30,
    offset: const Offset(0, 12),
  );

  // ============ BORDER RADIUS ============
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXL = 20.0;

  // ============ GRADIENTS - COASTAL ============
  static LinearGradient oceanGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      oceanBlue,
      tealBlue,
    ],
  );

  static LinearGradient coastalGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      tealBlue.withOpacity(0.9),
      lightTeal.withOpacity(0.8),
    ],
  );

  static LinearGradient sandyGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      warmSand,
      sandBeige,
    ],
  );
}
