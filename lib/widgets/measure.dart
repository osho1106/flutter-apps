import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Measure {
  // MARK: - Space

  static const double s_4 = 4;
  static const double s_8 = 8;
  static const double s_12 = 12;
  static const double s_16 = 16;

  // MARK: - Gap

  static const Gap g_4 = Gap(Measure.s_4);
  static const Gap g_8 = Gap(Measure.s_8);
  static const Gap g_12 = Gap(Measure.s_12);
  static const Gap g_16 = Gap(Measure.s_16);

  // MARK: - EdgeInsets(padding)

  static const EdgeInsets p_l4 = EdgeInsets.only(left: Measure.s_4);
  static const EdgeInsets p_t4 = EdgeInsets.only(top: Measure.s_4);
  static const EdgeInsets p_r4 = EdgeInsets.only(right: Measure.s_4);
  static const EdgeInsets p_b4 = EdgeInsets.only(bottom: Measure.s_4);
  static const EdgeInsets p_h4 = EdgeInsets.symmetric(horizontal: Measure.s_4);
  static const EdgeInsets p_v4 = EdgeInsets.symmetric(vertical: Measure.s_4);
  static const EdgeInsets p_a4 = EdgeInsets.all(Measure.s_4);
  static const EdgeInsets p_l8 = EdgeInsets.only(left: Measure.s_8);
  static const EdgeInsets p_t8 = EdgeInsets.only(top: Measure.s_8);
  static const EdgeInsets p_r8 = EdgeInsets.only(right: Measure.s_8);
  static const EdgeInsets p_b8 = EdgeInsets.only(bottom: Measure.s_8);
  static const EdgeInsets p_h8 = EdgeInsets.symmetric(horizontal: Measure.s_8);
  static const EdgeInsets p_v8 = EdgeInsets.symmetric(vertical: Measure.s_8);
  static const EdgeInsets p_a8 = EdgeInsets.all(Measure.s_8);
  static const EdgeInsets p_l12 = EdgeInsets.only(left: Measure.s_12);
  static const EdgeInsets p_t12 = EdgeInsets.only(top: Measure.s_12);
  static const EdgeInsets p_r12 = EdgeInsets.only(right: Measure.s_12);
  static const EdgeInsets p_b12 = EdgeInsets.only(bottom: Measure.s_12);
  static const EdgeInsets p_h12 = EdgeInsets.symmetric(horizontal: Measure.s_12);
  static const EdgeInsets p_v12 = EdgeInsets.symmetric(vertical: Measure.s_12);
  static const EdgeInsets p_a12 = EdgeInsets.all(Measure.s_12);
  static const EdgeInsets p_l16 = EdgeInsets.only(left: Measure.s_16);
  static const EdgeInsets p_t16 = EdgeInsets.only(top: Measure.s_16);
  static const EdgeInsets p_r16 = EdgeInsets.only(right: Measure.s_16);
  static const EdgeInsets p_b16 = EdgeInsets.only(bottom: Measure.s_16);
  static const EdgeInsets p_h16 = EdgeInsets.symmetric(horizontal: Measure.s_16);
  static const EdgeInsets p_v16 = EdgeInsets.symmetric(vertical: Measure.s_16);
  static const EdgeInsets p_a16 = EdgeInsets.all(Measure.s_16);

  // MARK: - Corner Radius

  static const r_2 = Radius.circular(2.0);
  static const r_4 = Radius.circular(4.0);
  static const r_6 = Radius.circular(6.0);
  static const r_8 = Radius.circular(8.0);

  // MARK: - Border Radius

  static const br_2 = BorderRadius.all(Measure.r_2);
  static const br_4 = BorderRadius.all(Measure.r_4);
  static const br_6 = BorderRadius.all(Measure.r_6);
  static const br_8 = BorderRadius.all(Measure.r_8);
}