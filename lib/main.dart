import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/router/app_router.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {  

   final isDarkMode = ref.watch(isDarkModeProvider);
   final selectedColor = ref.watch(selectedIndexColorProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, isDarkMode: isDarkMode ).getTheme(),
    );
  }
}
