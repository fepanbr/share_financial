// ignore_for_file: use_full_hex_values_for_flutter_colors

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285422848),
      surfaceTint: Color(4285422848),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294959976),
      onPrimaryContainer: Color(4283779072),
      secondary: Color(4285226532),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294370204),
      onSecondaryContainer: Color(4283713552),
      tertiary: Color(4283262720),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291555951),
      onTertiaryContainer: Color(4282077184),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965742),
      onBackground: Color(4280163089),
      surface: Color(4294965742),
      onSurface: Color(4280163089),
      surfaceVariant: Color(4293649096),
      onSurfaceVariant: Color(4283189043),
      outline: Color(4286412641),
      outlineVariant: Color(4291806893),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610277),
      inverseOnSurface: Color(4294504671),
      inversePrimary: Color(4293248292),
      primaryFixed: Color(4294959710),
      onPrimaryFixed: Color(4280425216),
      primaryFixedDim: Color(4293248292),
      onPrimaryFixedVariant: Color(4283647488),
      secondaryFixed: Color(4294304411),
      onSecondaryFixed: Color(4280425216),
      secondaryFixedDim: Color(4292396674),
      onSecondaryFixedVariant: Color(4283581966),
      tertiaryFixed: Color(4291424622),
      onTertiaryFixed: Color(4279574272),
      tertiaryFixedDim: Color(4289647701),
      onTertiaryFixedVariant: Color(4281945344),
      surfaceDim: Color(4292925897),
      surfaceBright: Color(4294965742),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294702050),
      surfaceContainer: Color(4294307293),
      surfaceContainerHigh: Color(4293912791),
      surfaceContainerHighest: Color(4293518033),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4283384320),
      surfaceTint: Color(4285422848),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4287132672),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283318794),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286739512),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281747712),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284448512),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965742),
      onBackground: Color(4280163089),
      surface: Color(4294965742),
      onSurface: Color(4280163089),
      surfaceVariant: Color(4293649096),
      onSurfaceVariant: Color(4282925872),
      outline: Color(4284833610),
      outlineVariant: Color(4286675556),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610277),
      inverseOnSurface: Color(4294504671),
      inversePrimary: Color(4293248292),
      primaryFixed: Color(4287132672),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4285291264),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286739512),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285029410),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284448512),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283130880),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292925897),
      surfaceBright: Color(4294965742),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294702050),
      surfaceContainer: Color(4294307293),
      surfaceContainerHigh: Color(4293912791),
      surfaceContainerHighest: Color(4293518033),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4280885760),
      surfaceTint: Color(4285422848),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283384320),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280885760),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283318794),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279903744),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281747712),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965742),
      onBackground: Color(4280163089),
      surface: Color(4294965742),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4293649096),
      onSurfaceVariant: Color(4280820755),
      outline: Color(4282925872),
      outlineVariant: Color(4282925872),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610277),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294962338),
      primaryFixed: Color(4283384320),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281674752),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283318794),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281674752),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281747712),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280496384),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292925897),
      surfaceBright: Color(4294965742),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294702050),
      surfaceContainer: Color(4294307293),
      surfaceContainerHigh: Color(4293912791),
      surfaceContainerHighest: Color(4293518033),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294967295),
      surfaceTint: Color(4293248292),
      onPrimary: Color(4282003456),
      primaryContainer: Color(4294169396),
      onPrimaryContainer: Color(4283121408),
      secondary: Color(4292396674),
      onSecondary: Color(4282003456),
      secondaryContainer: Color(4283055878),
      onSecondaryContainer: Color(4293317774),
      tertiary: Color(4294967295),
      onTertiary: Color(4280694016),
      tertiaryContainer: Color(4290568802),
      onTertiaryContainer: Color(4281550080),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279636746),
      onBackground: Color(4293518033),
      surface: Color(4279636746),
      onSurface: Color(4293518033),
      surfaceVariant: Color(4283189043),
      onSurfaceVariant: Color(4291806893),
      outline: Color(4288188537),
      outlineVariant: Color(4283189043),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518033),
      inverseOnSurface: Color(4281610277),
      inversePrimary: Color(4285422848),
      primaryFixed: Color(4294959710),
      onPrimaryFixed: Color(4280425216),
      primaryFixedDim: Color(4293248292),
      onPrimaryFixedVariant: Color(4283647488),
      secondaryFixed: Color(4294304411),
      onSecondaryFixed: Color(4280425216),
      secondaryFixedDim: Color(4292396674),
      onSecondaryFixedVariant: Color(4283581966),
      tertiaryFixed: Color(4291424622),
      onTertiaryFixed: Color(4279574272),
      tertiaryFixedDim: Color(4289647701),
      onTertiaryFixedVariant: Color(4281945344),
      surfaceDim: Color(4279636746),
      surfaceBright: Color(4282202414),
      surfaceContainerLowest: Color(4279242246),
      surfaceContainerLow: Color(4280163089),
      surfaceContainer: Color(4280426517),
      surfaceContainerHigh: Color(4281149983),
      surfaceContainerHighest: Color(4281873705),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294967295),
      surfaceTint: Color(4293248292),
      onPrimary: Color(4282003456),
      primaryContainer: Color(4294169396),
      onPrimaryContainer: Color(4280688384),
      secondary: Color(4292660101),
      onSecondary: Color(4280030720),
      secondaryContainer: Color(4288712785),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294967295),
      onTertiary: Color(4280694016),
      tertiaryContainer: Color(4290568802),
      onTertiaryContainer: Color(4279771904),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279636746),
      onBackground: Color(4293518033),
      surface: Color(4279636746),
      onSurface: Color(4294966005),
      surfaceVariant: Color(4283189043),
      onSurfaceVariant: Color(4292070065),
      outline: Color(4289373067),
      outlineVariant: Color(4287267692),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518033),
      inverseOnSurface: Color(4281149983),
      inversePrimary: Color(4283778816),
      primaryFixed: Color(4294959710),
      onPrimaryFixed: Color(4279636224),
      primaryFixedDim: Color(4293248292),
      onPrimaryFixedVariant: Color(4282398208),
      secondaryFixed: Color(4294304411),
      onSecondaryFixed: Color(4279636224),
      secondaryFixedDim: Color(4292396674),
      onSecondaryFixedVariant: Color(4282398208),
      tertiaryFixed: Color(4291424622),
      onTertiaryFixed: Color(4278981632),
      tertiaryFixedDim: Color(4289647701),
      onTertiaryFixedVariant: Color(4281023488),
      surfaceDim: Color(4279636746),
      surfaceBright: Color(4282202414),
      surfaceContainerLowest: Color(4279242246),
      surfaceContainerLow: Color(4280163089),
      surfaceContainer: Color(4280426517),
      surfaceContainerHigh: Color(4281149983),
      surfaceContainerHighest: Color(4281873705),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294967295),
      surfaceTint: Color(4293248292),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294169396),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966005),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4292660101),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294967295),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290568802),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279636746),
      onBackground: Color(4293518033),
      surface: Color(4279636746),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283189043),
      onSurfaceVariant: Color(4294966005),
      outline: Color(4292070065),
      outlineVariant: Color(4292070065),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518033),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4281477632),
      primaryFixed: Color(4294960768),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4293511465),
      onPrimaryFixedVariant: Color(4280030720),
      secondaryFixed: Color(4294567839),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4292660101),
      onSecondaryFixedVariant: Color(4280030720),
      tertiaryFixed: Color(4291753330),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4289910873),
      onTertiaryFixedVariant: Color(4279245056),
      surfaceDim: Color(4279636746),
      surfaceBright: Color(4282202414),
      surfaceContainerLowest: Color(4279242246),
      surfaceContainerLow: Color(4280163089),
      surfaceContainer: Color(4280426517),
      surfaceContainerHigh: Color(4281149983),
      surfaceContainerHighest: Color(4281873705),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
