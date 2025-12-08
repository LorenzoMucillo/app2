import 'package:flutter/material.dart';
import 'package:for_flutter/pages/login_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("pt", "BR"),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", "US"),
        Locale("pt", "BR"),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Formulário Flutter',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 184, 253, 238),
      ),
      home: LoginPage(),
    );
  }
}    