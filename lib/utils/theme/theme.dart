import 'package:ess_ess_agro/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class FAppTheme{
  FAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      textTheme: FTextTheme.lightTextTheme,
     );
}