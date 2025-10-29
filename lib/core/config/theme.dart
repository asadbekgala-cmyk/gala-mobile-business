import 'package:flutter/material.dart';
import 'package:gala_business/core/config/colors.dart';
import 'package:gala_business/core/config/fonts.dart';

class AppTheme {
  ThemeData lightTheme() => ThemeData();

  ThemeData darkTheme() {
    final colors = AppColors();
    return ThemeData(
      scaffoldBackgroundColor: colors.whiteF5,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.whiteF5,
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      extensions: [
        AppFonts(
          fontSize36Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 36,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize24Weight800: TextStyle(
            fontFamily: "Raleway",
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize24Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize12Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize12Weight300: TextStyle(
            fontFamily: "Raleway",
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize13Weight300: TextStyle(
            fontFamily: "Raleway",
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize32Weight500: TextStyle(
            fontFamily: "Raleway",
            fontSize: 32,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize19Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize22Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize22Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize16Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize16Weight500: TextStyle(
            fontFamily: "Raleway",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize16Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize16Weight700: TextStyle(
            fontFamily: "Raleway",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize14Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize24Weight700: TextStyle(
            fontFamily: "Raleway",
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize20Weight700: TextStyle(
            fontFamily: "Raleway",
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize20Weight500: TextStyle(
            fontFamily: "Raleway",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize20Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize18Weight700: TextStyle(
            fontFamily: "Raleway",
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize18Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize18Weight500: TextStyle(
            fontFamily: "Raleway",
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize18Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize15Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize14Weight700: TextStyle(
            fontFamily: "Raleway",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize14Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize14Weight500: TextStyle(
            fontFamily: "Raleway",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize12Weight500: TextStyle(
            fontFamily: "Raleway",
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize12Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize10Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize8Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize30Weight700: TextStyle(
            fontFamily: "Raleway",
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize20Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize7Weight600: TextStyle(
            fontFamily: "Raleway",
            fontSize: 7,
            fontWeight: FontWeight.w600,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize24Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize13Weight400: TextStyle(
            fontFamily: "Raleway",
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
          fontSize24Weight500: TextStyle(
            fontFamily: "Raleway",
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: colors.black,

            fontFeatures: [const FontFeature.liningFigures()],
          ),
        ),
      ],
    );
  }
}
