import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/views/controllers/mainscreen_provider.dart';
import 'package:shop_app/views/ui/main_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MainScreenNotifier(),
    )
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'vantuan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: main_screen(),
    );
  }
}
