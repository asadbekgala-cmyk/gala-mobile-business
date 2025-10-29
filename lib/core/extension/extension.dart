import 'package:flutter/material.dart';
import 'package:gala_business/core/config/app_constants.dart';
import 'package:gala_business/core/config/colors.dart';
import 'package:gala_business/core/config/fonts.dart';
import 'package:gala_business/core/config/icons.dart';
import 'package:gala_business/core/config/images.dart';
import 'package:gala_business/core/config/theme.dart';
import 'package:gala_business/core/routing/route_nemas/route_names.dart';


extension BuildContextGeneral on BuildContext {
  AppColors get colors {
    return AppColors();
  }

  AppTheme get theme {
    return AppTheme();
  }

  AppFonts get style {
    return theme.darkTheme().extension<AppFonts>()!;
  }

  AppIcons get icon {
    return AppIcons();
  }

  AppImages get image {
    return AppImages();
  }

  AppRouteName get route {
    return AppRouteName();
  }

  AppSharedKeys get sharedKey {
    return AppSharedKeys();
  }
}
