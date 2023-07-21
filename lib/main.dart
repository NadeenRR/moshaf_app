import 'package:flutter/material.dart';
import 'package:moshaf_api/presentation/screens/azkar_type.dart';
import 'package:moshaf_api/presentation/screens/home_screen.dart';
import 'package:moshaf_api/presentation/screens/splash_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl, // Set RTL direction here
        child: SplashScreen(),
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/azkar': (context) => const AzkarType(),
        
      },
    );
  }
}
