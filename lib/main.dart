import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';
import 'common/data/app_preferences.dart';
import 'dart:async' show Timer;
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  final bindings = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: bindings); //기존의 네이티브 화면을 보존해준다
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();
  timeago.setLocaleMessages('fr', timeago.KoMessages());

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: const App()));
}
