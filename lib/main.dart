import 'package:flutter/material.dart';
import 'package:nomnom_replica/global_padding.dart';
import 'package:nomnom_replica/menu_options.dart';
import 'package:nomnom_replica/search_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAF9F7),
        primaryColor: const Color(0xFFFF8E20),
        disabledColor: const Color(0xFFA5A3A4),
        canvasColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.1),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xFF4F4D4E),
          ),
          titleMedium: TextStyle(
            color: Color(0xFF4F4D4E),
          ),
          titleSmall: TextStyle(
            color: Color(0xFF4F4D4E),
          ),
          bodyLarge: TextStyle(
            color: Color(0xFF4F4D4E),
          ),
          bodyMedium: TextStyle(
            color: Color(0xFF3D3D3D),
          ),
          bodySmall: TextStyle(
            color: Color(0xFF3D3D3D),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
      home: const SafeArea(
        child: GlobalPadding(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                CustomSearchBar(),
                SizedBox(
                  height: 20,
                ),
                MenuOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
