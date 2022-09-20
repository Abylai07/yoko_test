import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:yoko_test/screens/login_screen/login_screen.dart';
import 'package:yoko_test/repository/repo_settings.dart';

import 'generated/l10n.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final repoSettings = RepoSettings();
  await repoSettings.init();
  var defaultLocale = const Locale('ru', 'RU');
  final locale = await repoSettings.readLocale();
  if (locale == 'en') {
    defaultLocale = const Locale('en');
  }

  runApp(
    MyApp(
      locale: defaultLocale,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.locale}) : super(key: key);
  final Locale? locale;
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Yoko Test',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
