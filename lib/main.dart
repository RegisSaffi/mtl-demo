import 'package:flutter/material.dart';
import 'package:mtldemo/views/notifications/notifications_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          appBarTheme: AppBarTheme(
              color: ThemeData.light().scaffoldBackgroundColor, elevation: 0)),
      home: const NotificationsScreen(),
    );
  }
}
