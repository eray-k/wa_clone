import 'package:flutter/material.dart';
import 'package:wa_clone/views/contacts_page.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF008069)),
        useMaterial3: true,
      ),
      home: const ContactsPage(),
    );
  }
}
