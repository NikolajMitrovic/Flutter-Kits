import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/barbera/src/helpers/constans.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/category_model.dart';

List<CategoryModel> categoryList(BuildContext context) => [
      CategoryModel(
        name: AppLocalizations.of(context)!.coloring,
        icon: Assets.coloring,
        color: const Color(0xFF00A19D),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.haircut,
        icon: Assets.haircut,
        color: const Color(0xFFFF0000),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.hairstyle,
        icon: Assets.hairstyle,
        color: const Color(0xFF3B0000),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.makeup,
        icon: Assets.makeUp,
        color: const Color(0xFF6F69AC),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.nails,
        icon: Assets.nails,
        color: const Color(0xFFFFB319),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shampoo,
        icon: Assets.shampoo,
        color: const Color(0xFF22577A),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shaving,
        icon: Assets.shaving,
        color: const Color(0xFF7EB5A6),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.spa,
        icon: Assets.spa,
        color: const Color(0xFF2A0944),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.eye_makeup,
        icon: Assets.eyeMakeup,
        color: const Color(0xFFE05D5D),
      ),
    ];
