import 'package:test_base_cubit/app/ui/colors_manager.dart';
import 'package:test_base_cubit/app/ui/dimensions.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData normal = ThemeData(
    // scaffold
    scaffoldBackgroundColor: Colors.white,
    // app bar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      centerTitle: true,
      elevation: 0,
    ),
    // text edit field
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.textEditFill,
      filled: true,
      contentPadding: const EdgeInsets.all(5),
      hintStyle: AppTextStyles.poppinsRegular.copyWith(color: AppColors.grey, fontSize: 14),
      labelStyle: AppTextStyles.poppinsRegular.copyWith(color: AppColors.grey, fontSize: 14),
      errorStyle: AppTextStyles.poppinsRegular.copyWith(color: AppColors.error, fontSize: 14),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radiusDefault)),
      ),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey), borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radiusDefault))),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.error),
        borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radiusDefault)),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary),
        borderRadius: BorderRadius.all(Radius.circular(AppDimensions.radiusDefault)),
      ),
    ),
    // ====================================== BottomNavigationBar
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   type: BottomNavigationBarType.fixed,
    //   selectedItemColor: Colors.black,
    //   unselectedItemColor: AppColors.white,
    //   backgroundColor: AppColors.primary,
    //
    // )

    // ======================================
    // ======================================
    // ======================================
  );
}

class Fonts {
  static const String poppins = "Poppins";
}

class AppFontsSize {
  static const double fontSizeDefault = 14.0;
  static const double fontSizeSmall = 12.0;
  static const double fontSizeLarge = 16.0;
}

class AppTextStyles {
  //poppins
  static const TextStyle poppinsLight = TextStyle(
    color: AppColors.primary,
    fontFamily: Fonts.poppins,
    fontWeight: FontWeight.w300,
    fontSize: AppFontsSize.fontSizeDefault,
  );
  static const TextStyle caption = TextStyle(
    color: AppColors.grey,
    fontFamily: Fonts.poppins,
    fontWeight: FontWeight.w300,
    fontSize: AppFontsSize.fontSizeSmall,
  );
  static const TextStyle captionName = TextStyle(
    color: AppColors.grey,
    fontFamily: Fonts.poppins,
    fontWeight: FontWeight.bold,
    fontSize: AppFontsSize.fontSizeSmall,
  );
  static const TextStyle poppinsRegular = TextStyle(
    color: AppColors.primary,
    fontFamily: Fonts.poppins,
    fontWeight: FontWeight.w400,
    fontSize: AppFontsSize.fontSizeLarge,
  );

  static const TextStyle poppinsMedium = TextStyle(
    color: AppColors.primary,
    fontFamily: Fonts.poppins,
    fontWeight: FontWeight.w500,
    fontSize: AppFontsSize.fontSizeDefault,
  );
}
