import 'dart:ui';

import 'package:flutter/material.dart';

extension TextStyleExtn on TextStyle {
  ColorScheme cs(BuildContext context) => Theme.of(context).colorScheme;
  TextStyle primary(BuildContext context) => copyWith(color: cs(context).primary);
  TextStyle primaryContainer(BuildContext context) => copyWith(color: cs(context).primaryContainer);
  TextStyle primaryFixed(BuildContext context) => copyWith(color: cs(context).primaryFixed);
  TextStyle primaryFixedDim(BuildContext context) => copyWith(color: cs(context).primaryFixedDim);
  TextStyle inversePrimary(BuildContext context) => copyWith(color: cs(context).inversePrimary);
  TextStyle secondary(BuildContext context) => copyWith(color: cs(context).secondary);
  TextStyle secondaryContainer(BuildContext context) =>
      copyWith(color: cs(context).secondaryContainer);
  TextStyle secondaryFixed(BuildContext context) => copyWith(color: cs(context).secondaryFixed);
  TextStyle secondaryFixedDim(BuildContext context) =>
      copyWith(color: cs(context).secondaryFixedDim);
  TextStyle tertiary(BuildContext context) => copyWith(color: cs(context).tertiary);
  TextStyle tertiaryContainer(BuildContext context) =>
      copyWith(color: cs(context).tertiaryContainer);
  TextStyle tertiaryFixed(BuildContext context) => copyWith(color: cs(context).tertiaryFixed);
  TextStyle tertiaryFixedDim(BuildContext context) => copyWith(color: cs(context).tertiaryFixedDim);
  TextStyle error(BuildContext context) => copyWith(color: cs(context).error);
  TextStyle errorContainer(BuildContext context) => copyWith(color: cs(context).errorContainer);
  TextStyle surface(BuildContext context) => copyWith(color: cs(context).surface);
  TextStyle surfaceBright(BuildContext context) => copyWith(color: cs(context).surfaceBright);
  TextStyle surfaceContainer(BuildContext context) => copyWith(color: cs(context).surfaceContainer);
  TextStyle surfaceContainerHigh(BuildContext context) =>
      copyWith(color: cs(context).surfaceContainerHigh);
  TextStyle surfaceContainerHighest(BuildContext context) =>
      copyWith(color: cs(context).surfaceContainerHighest);
  TextStyle surfaceContainerLow(BuildContext context) =>
      copyWith(color: cs(context).surfaceContainerLow);
  TextStyle surfaceContainerLowest(BuildContext context) =>
      copyWith(color: cs(context).surfaceContainerLowest);
  TextStyle surfaceDim(BuildContext context) => copyWith(color: cs(context).surfaceDim);
  TextStyle surfaceTint(BuildContext context) => copyWith(color: cs(context).surfaceTint);
  TextStyle inverseSurface(BuildContext context) => copyWith(color: cs(context).inverseSurface);

  TextStyle onPrimary(BuildContext context) => copyWith(color: cs(context).onPrimary);
  TextStyle onPrimaryContainer(BuildContext context) =>
      copyWith(color: cs(context).onPrimaryContainer);
  TextStyle onPrimaryFixed(BuildContext context) => copyWith(color: cs(context).onPrimaryFixed);
  TextStyle onSecondary(BuildContext context) => copyWith(color: cs(context).onSecondary);
  TextStyle onSecondaryContainer(BuildContext context) =>
      copyWith(color: cs(context).onSecondaryContainer);
  TextStyle onSecondaryFixed(BuildContext context) => copyWith(color: cs(context).onSecondaryFixed);
  TextStyle onTertiary(BuildContext context) => copyWith(color: cs(context).onTertiary);
  TextStyle onTertiaryContainer(BuildContext context) =>
      copyWith(color: cs(context).onTertiaryContainer);
  TextStyle onTertiaryFixed(BuildContext context) => copyWith(color: cs(context).onTertiaryFixed);
  TextStyle onError(BuildContext context) => copyWith(color: cs(context).onError);
  TextStyle onErrorContainer(BuildContext context) => copyWith(color: cs(context).onErrorContainer);
  TextStyle onSurface(BuildContext context) => copyWith(color: cs(context).onSurface);
  TextStyle onSurfaceVariant(BuildContext context) => copyWith(color: cs(context).onSurfaceVariant);
  TextStyle onInverseSurface(BuildContext context) => copyWith(color: cs(context).onInverseSurface);

  TextStyle color(Color color) => copyWith(color: color);
  TextStyle hexColor(int colorValue) => color(Color(colorValue));

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);

  /// Thin, the least thick
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);

  /// Extra-light
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);

  /// Light
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);

  /// Normal / regular / plain
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);

  /// Medium
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);

  /// Semi-bold
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);

  /// Bold
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);

  /// Extra-bold
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);

  /// Extra-bold
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

//-----------------------

  /// [fs] is new font size for this style
  TextStyle sized(int fs) {
    assert(fs >= 8 && fs <= 20,
        'font size is not valid range [ 8 >= $fs <= 20 ] , [said : ui / ux designers ] => fontSize > [$fs]');
    return copyWith(fontSize: fs.toDouble());
  }

  TextStyle get fs8 => sized(8);
  TextStyle get fs10 => sized(10);
  TextStyle get fs12 => sized(12);
  TextStyle get fs14 => sized(14);
  TextStyle get fs16 => sized(16);
  TextStyle get fs18 => sized(18);
  TextStyle get fs20 => sized(20);

  /// Shortcut for italic
  TextStyle get italic => style(FontStyle.italic);

  /// Shortcut for underline
  TextStyle get underline => textDecoration(TextDecoration.underline);

  /// Shortcut for linethrough
  TextStyle get lineThrough => textDecoration(TextDecoration.lineThrough);

  /// Shortcut for overline
  TextStyle get overline => textDecoration(TextDecoration.overline);
  TextStyle style(FontStyle v) => copyWith(fontStyle: v);
  TextStyle textDecoration(
    TextDecoration v, {
    Color? color,
    TextDecorationStyle? style,
    double? thickness,
  }) =>
      copyWith(
          decoration: v,
          decorationColor: color,
          decorationStyle: style,
          decorationThickness: thickness);
}
