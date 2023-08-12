
import '../theme/custom_theme.dart';
import 'app_preferences.dart';

class Prefs {
  static final appTheme = PreferenceItem<CustomTheme>('appTheme', CustomTheme.light);
}
