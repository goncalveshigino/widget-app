import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
      home:  Scaffold(
        body: Center(
          child: FilledButton(onPressed: (){}, child: Text('Ola')),
        ),
      ),
    );
  }
}
