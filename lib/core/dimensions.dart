import 'package:flutter/material.dart';

class Dimensions {
  const Dimensions._();

  /// Design Size
  static const deviseSize = Size(360, 700);

  /// Padding left
  static const paddingLeft30 = EdgeInsets.only(left: 30);
  static const paddingB20 = EdgeInsets.only(bottom: 20);
  static const paddingB10 = EdgeInsets.only(bottom: 10);

  /// Horizontal padding
  static const paddingH12 = EdgeInsets.symmetric(horizontal: 12);
  static const paddingH8 = EdgeInsets.symmetric(horizontal: 8);
  static const paddingH16 = EdgeInsets.symmetric(horizontal: 16);
  static const paddingH16V4 = EdgeInsets.symmetric(horizontal: 16, vertical: 4);

  static const paddingH16V8 = EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  /// Symmetric
  static const paddingH20V16 = EdgeInsets.symmetric(horizontal: 20, vertical: 16);
  static const paddingH16V30 = EdgeInsets.symmetric(horizontal: 16, vertical: 30);
  static const paddingH8V8 = EdgeInsets.symmetric(horizontal: 8, vertical: 8);

  /// Vertical
  static const paddingV10 = EdgeInsets.symmetric(vertical: 10);
  static const paddingV16 = EdgeInsets.symmetric(vertical: 12);

  /// Padding only
  static const paddingT16 = EdgeInsets.only(top: 16);
  static const paddingT12 = EdgeInsets.only(top: 12);
  static const paddingT10B10R10L16 = EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 16);
  static const paddingT20B20R20L20 = EdgeInsets.only(bottom: 20, right: 20, left: 20);

  static const paddingT10B10R16L16 = EdgeInsets.only(top: 6, bottom: 10, right: 16, left: 16);
  static const paddingL16T16B16 = EdgeInsets.only(top: 16, bottom: 16, left: 16);

  /// Vertical Spaces
  static const vSpace360 = SizedBox(height: 360);
  static const vSpace80 = SizedBox(height: 80);
  static const vSpace60 = SizedBox(height: 60);
  static const vSpace50 = SizedBox(height: 50);
  static const vSpace46 = SizedBox(height: 46);
  static const vSpace40 = SizedBox(height: 40);
  static const vSpace36 = SizedBox(height: 36);
  static const vSpace30 = SizedBox(height: 34);
  static const vSpace24 = SizedBox(height: 24);
  static const vSpace20 = SizedBox(height: 20);
  static const vSpace16 = SizedBox(height: 16);
  static const vSpace12 = SizedBox(height: 12);
  static const vSpace8 = SizedBox(height: 8);
  static const vSpace6 = SizedBox(height: 6);
  static const vSpace4 = SizedBox(height: 4);

  /// Horizontal Spaces
  static const hSpace30 = SizedBox(width: 30);
  static const hSpace20 = SizedBox(width: 20);
  static const hSpace16 = SizedBox(width: 16);
  static const hSpace12 = SizedBox(width: 12);
  static const hSpace10 = SizedBox(width: 10);
  static const hSpace8 = SizedBox(width: 8);
  static const hSpace6 = SizedBox(width: 6);

  /// Padding All
  static const paddingAll48 = EdgeInsets.all(48);
  static const paddingAll18 = EdgeInsets.all(18);
  static const paddingAll20 = EdgeInsets.all(26);
  static const paddingAll16 = EdgeInsets.all(16);
  static const paddingAll14 = EdgeInsets.all(14);
  static const paddingAll12 = EdgeInsets.all(12);
  static const paddingAll10 = EdgeInsets.all(10);
  static const paddingAll8 = EdgeInsets.all(8);
  static const paddingAll6 = EdgeInsets.all(6);
  static const paddingAll4 = EdgeInsets.all(4);
  static const paddingAll1 = EdgeInsets.all(1);

  /// Padding right
  static const paddingRight8 = EdgeInsets.only(right: 8);
  static const paddingLeft16 = EdgeInsets.only(left: 20);

  /// Radius
  static const radiusAll50 = BorderRadius.all(Radius.circular(50));
  static const radiusAll30 = BorderRadius.all(Radius.circular(30));
  static const radiusAll26 = BorderRadius.all(Radius.circular(26));
  static const radiusAll16 = BorderRadius.all(Radius.circular(16));
  static const radiusAll12 = BorderRadius.all(Radius.circular(12));
  static const radiusAll10 = BorderRadius.all(Radius.circular(10));
  static const radiusAll8 = BorderRadius.all(Radius.circular(8));

  /// Radius only
  static const radiusT30 = BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30));
  static const radiusT40 = BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40));

  static const radiusLTLB = BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16));
}


///String get formatPhone {
  //   return "${substring(0, 3)} ${substring(3, 5)} ${substring(5, 8)}-${substring(8, 10)}-${substring(10, 12)}";
  // }