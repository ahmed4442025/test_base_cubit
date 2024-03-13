import 'package:test_base_cubit/app/ui/colors_manager.dart';
import 'package:test_base_cubit/app/ui/theme_manager.dart';
import 'package:flutter/material.dart';

abstract class FontManager {
  static const TextStyle bigTitle = TextStyle(fontSize: 44, fontFamily: Fonts.poppins, color: AppColors.primary);
  static const TextStyle header = TextStyle(fontSize: 18, fontFamily: Fonts.poppins, color: AppColors.black, fontWeight: FontWeight.bold);
  static const TextStyle link = TextStyle(fontSize: 14, fontFamily: Fonts.poppins, color: AppColors.primary, fontWeight: FontWeight.bold);
  static const TextStyle normal = TextStyle(fontSize: 16, fontFamily: Fonts.poppins);
  static const TextStyle hintSmall = TextStyle(fontSize: 13, fontFamily: Fonts.poppins, color: AppColors.grey);
  static const TextStyle hint = TextStyle(fontSize: 14, fontFamily: Fonts.poppins, color: AppColors.grey);
  static const TextStyle bodyTitle = TextStyle(fontSize: 14, fontFamily: Fonts.poppins, color: AppColors.black);
  static const TextStyle bodySubTitle = TextStyle(fontSize: 12, fontFamily: Fonts.poppins, color: AppColors.greySubTitle);
  static const TextStyle bodySubSubTitle = TextStyle(fontSize: 12, fontFamily: Fonts.poppins, color: AppColors.greySubSubTitle);
  static const TextStyle selectedTabBar = TextStyle(fontSize: 14, fontFamily: Fonts.poppins, color: AppColors.white, fontWeight: FontWeight.w400);
  static const TextStyle unSelectedTabBar = TextStyle(fontSize: 14, fontFamily: Fonts.poppins, color: AppColors.black, fontWeight: FontWeight.w400);
}
