import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';



//inmutable
final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider((ref) => false);

final selectedIndexColorProvider = StateProvider((ref) => 0);



final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);


class ThemeNotifier extends StateNotifier<AppTheme> {

  ThemeNotifier(): super( AppTheme());

  void toggleDarkMode(){
     state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void changeColorIndex(int colorIndex ){
    state = state.copyWith( selectedColor: colorIndex);
  }


}