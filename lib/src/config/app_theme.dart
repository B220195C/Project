import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_score/main.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/app_size.dart';

ThemeData getAppTheme() => ThemeData(
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
    iconTheme: IconThemeData(color: AppColors.black),
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.cyan,
    titleTextStyle: TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ),
  ),
  scaffoldBackgroundColor: Colors.cyan,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: AppColors.black,
      fontSize: FontSize.title,
      fontWeight: FontWeights.extraBold,
    ),
    titleMedium: TextStyle(
      color: AppColors.black,
      fontSize: FontSize.subTitle,
      fontWeight: FontWeights.bold,
    ),
    bodyLarge: TextStyle(
      color: AppColors.black,
      fontSize: FontSize.subTitle,
      fontWeight: FontWeights.semiBold,
    ),
    bodyMedium: TextStyle(
      color: AppColors.black,
      fontSize: FontSize.bodyText,
      fontWeight: FontWeights.regular,
    ),
    bodySmall: TextStyle(
      color: AppColors.white,
      fontSize: FontSize.details,
      fontWeight: FontWeights.medium,
    ),
  ),
);