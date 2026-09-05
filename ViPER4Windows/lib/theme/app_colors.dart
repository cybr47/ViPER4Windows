import 'package:fluent_ui/fluent_ui.dart';

enum ViperThemeMode {
  materialDark,
  materialLight,
  monochrome,
  amoled,
}

class AppPalette {
  const AppPalette({
    required this.brightness,
    required this.background,
    required this.navBackground,
    required this.navHighlight,
    required this.accent,
    required this.secondary,
    required this.cardBackground,
    required this.cardBorder,
    required this.subtitleText,
    required this.disabledText,
    required this.enabledText,
  });

  final Brightness brightness;
  final Color background;
  final Color navBackground;
  final Color navHighlight;
  final Color accent;
  final Color secondary;
  final Color cardBackground;
  final Color cardBorder;
  final Color subtitleText;
  final Color disabledText;
  final Color enabledText;

  static AppPalette forMode(ViperThemeMode mode) {
    switch (mode) {
      case ViperThemeMode.materialDark:
        return const AppPalette(
          brightness: Brightness.dark,
          background: Color(0xFF111318),
          navBackground: Color(0xFF191A1F),
          navHighlight: Color(0xFF2D3038),
          accent: Color(0xFFA8C7FA),
          secondary: Color(0xFFC4C6D0),
          cardBackground: Color(0xFF1D1E23),
          cardBorder: Color(0xFF44474F),
          subtitleText: Color(0xFFC4C6D0),
          disabledText: Color(0xFF92939B),
          enabledText: Color(0xFFE3E2E6),
        );
      case ViperThemeMode.materialLight:
        return const AppPalette(
          brightness: Brightness.light,
          background: Color(0xFFF9F9FF),
          navBackground: Color(0xFFF0F1F8),
          navHighlight: Color(0xFFDDE2F9),
          accent: Color(0xFF415F91),
          secondary: Color(0xFF565F71),
          cardBackground: Color(0xFFF0F0F7),
          cardBorder: Color(0xFF74777F),
          subtitleText: Color(0xFF44474F),
          disabledText: Color(0xFF74777F),
          enabledText: Color(0xFF1A1B20),
        );
      case ViperThemeMode.monochrome:
        return const AppPalette(
          brightness: Brightness.dark,
          background: Color(0xFF303030),
          navBackground: Color(0xFF272727),
          navHighlight: Color(0xFF505050),
          accent: Color(0xFFF2F0F4),
          secondary: Color(0xFFC9C7CB),
          cardBackground: Color(0xFF3A3A3A),
          cardBorder: Color(0xFF585858),
          subtitleText: Color(0xFFC9C7CB),
          disabledText: Color(0xFF9C9A9E),
          enabledText: Color(0xFFF2F0F4),
        );
      case ViperThemeMode.amoled:
        return const AppPalette(
          brightness: Brightness.dark,
          background: Color(0xFF000000),
          navBackground: Color(0xFF000000),
          navHighlight: Color(0xFF252525),
          accent: Color(0xFFF4EFF4),
          secondary: Color(0xFFCAC4D0),
          cardBackground: Color(0xFF0F0F0F),
          cardBorder: Color(0xFF363636),
          subtitleText: Color(0xFFCAC4D0),
          disabledText: Color(0xFF8E8A91),
          enabledText: Color(0xFFF4EFF4),
        );
    }
  }
}

abstract final class AppColors {
  static AppPalette _palette = AppPalette.forMode(ViperThemeMode.materialDark);

  static AppPalette get current => _palette;

  static AppPalette paletteFor(ViperThemeMode mode) => AppPalette.forMode(mode);

  static void configure(AppPalette palette) {
    _palette = palette;
  }

  static Color get accent => _palette.accent;
  static Color get cardBackground => _palette.cardBackground;
  static Color get cardBorder => _palette.cardBorder;
  static Color get subtitleText => _palette.subtitleText;
  static Color get disabledText => _palette.disabledText;
  static Color get enabledText => _palette.enabledText;
}
