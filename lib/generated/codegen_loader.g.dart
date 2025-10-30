// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ru = {
  "katalog": "Каталог",
  "buyurtmalar": "Заказы",
  "asboblar": "Инструменты",
  "boshqalar": "Другие",
  "asosiy": "Главный"
};
static const Map<String,dynamic> _uz = {
  "katalog": "Katalog",
  "buyurtmalar": "Buyurtmalar",
  "asboblar": "Asboblar",
  "boshqalar": "Boshqalar",
  "asosiy": "Asosiy"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": _ru, "uz": _uz};
}
