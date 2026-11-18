
import 'package:flutter/material.dart';

import 'app.home.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Operaciones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 183, 58, 164)),
      ),
      home:  AppHome(),
    );
  }
}
