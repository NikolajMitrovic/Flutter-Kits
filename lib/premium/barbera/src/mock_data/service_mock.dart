
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/barbera/src/helpers/constans.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/category_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/service_model.dart';

List<CategoryModel> serviceList(BuildContext context) => [
      CategoryModel(
        name: AppLocalizations.of(context)!.coloring,
        icon: Assets.coloring,
        color: const Color(0xFF00A19D),
        services: [
          ServicesModel(
            name: 'Solid Color',
            price: 12,
          ),
          ServicesModel(
            name: 'Rainbow',
            price: 15,
          ),
          ServicesModel(
            name: 'Custom',
            price: 25,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.haircut,
        icon: Assets.haircut,
        color: const Color(0xFFFF0000),
        services: [
          ServicesModel(
            name: 'The Classic French Bob',
            price: 12,
          ),
          ServicesModel(
            name: 'Chin-Length Chic Haircut',
            price: 15,
          ),
          ServicesModel(
            name: 'Comb Over Bob Cut',
            price: 11,
          ),
          ServicesModel(
            name: 'Shaggy Lob Cut',
            price: 22,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.hairstyle,
        icon: Assets.hairstyle,
        color: const Color(0xFF3B0000),
        services: [
          ServicesModel(
            name: 'Straight',
            price: 12,
          ),
          ServicesModel(
            name: 'Wavy',
            price: 23,
          ),
          ServicesModel(
            name: 'Curly',
            price: 25,
          ),
          ServicesModel(
            name: 'Tightly Curled',
            price: 15,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.makeup,
        icon: Assets.makeUp,
        color: const Color(0xFF6F69AC),
        services: [
          ServicesModel(
            name: 'Primer',
            price: 15,
          ),
          ServicesModel(
            name: 'Concealer',
            price: 12,
          ),
          ServicesModel(
            name: 'Foundation',
            price: 5,
          ),
          ServicesModel(
            name: 'Compact/Setting powder',
            price: 15,
          ),
          ServicesModel(
            name: 'Eyeshadow',
            price: 15,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.nails,
        icon: Assets.nails,
        color: const Color(0xFFFFB319),
        services: [
          ServicesModel(
            name: 'Oval',
            price: 7,
          ),
          ServicesModel(
            name: 'Almond',
            price: 12,
          ),
          ServicesModel(
            name: 'Square',
            price: 15,
          ),
          ServicesModel(
            name: 'Coffin',
            price: 18,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shampoo,
        icon: Assets.shampoo,
        color: const Color(0xFF22577A),
        services: [
          ServicesModel(
            name: 'Regular',
            price: 15,
          ),
          ServicesModel(
            name: 'Special',
            price: 25,
          ),
        ]
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shaving,
        icon: Assets.shaving,
        color: const Color(0xFF7EB5A6),
        services: [
          ServicesModel(
            name: 'Disposable',
            price: 12,
          ),
          ServicesModel(
            name: 'Cartridge',
            price: 7,
          ),
          ServicesModel(
            name: 'Safety',
            price: 17,
          ),
          ServicesModel(
            name: 'Electric',
            price: 15,
          ),
        ]
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.spa,
        icon: Assets.spa,
        color: const Color(0xFF2A0944),
        services: [
          ServicesModel(
            name: 'Regular',
            price: 15,
          ),
          ServicesModel(
            name: 'Special',
            price: 25,
          ),
        ]
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.eye_makeup,
        icon: Assets.eyeMakeup,
        color: const Color(0xFFE05D5D),
        services: [
          ServicesModel(
            name: 'Natural',
            price: 15,
          ),ServicesModel(
            name: 'Shimmery',
            price: 22,
          ),ServicesModel(
            name: 'Cat Eyes',
            price: 12,
          ),ServicesModel(
            name: 'Gradient',
            price: 25,
          ),
        ]
      ),
    ];

List<CategoryModel> maleServiceList(BuildContext context) => [
      CategoryModel(
        name: AppLocalizations.of(context)!.coloring,
        icon: Assets.coloring,
        color: const Color(0xFF00A19D),
        services: [
          ServicesModel(
            name: 'Solid Color',
            price: 12,
          ),
          ServicesModel(
            name: 'Rainbow',
            price: 15,
          ),
          ServicesModel(
            name: 'Custom',
            price: 25,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.haircut,
        icon: Assets.haircut,
        color: const Color(0xFFFF0000),
        services: [
          ServicesModel(
            name: 'The Classic French Bob',
            price: 12,
          ),
          ServicesModel(
            name: 'Chin-Length Chic Haircut',
            price: 15,
          ),
          ServicesModel(
            name: 'Comb Over Bob Cut',
            price: 11,
          ),
          ServicesModel(
            name: 'Shaggy Lob Cut',
            price: 22,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.hairstyle,
        icon: Assets.hairstyle,
        color: const Color(0xFF3B0000),
        services: [
          ServicesModel(
            name: 'Straight',
            price: 12,
          ),
          ServicesModel(
            name: 'Wavy',
            price: 23,
          ),
          ServicesModel(
            name: 'Curly',
            price: 25,
          ),
          ServicesModel(
            name: 'Tightly Curled',
            price: 15,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.makeup,
        icon: Assets.makeUp,
        color: const Color(0xFF6F69AC),
        services: [
          ServicesModel(
            name: 'Primer',
            price: 15,
          ),
          ServicesModel(
            name: 'Concealer',
            price: 12,
          ),
          ServicesModel(
            name: 'Foundation',
            price: 5,
          ),
          ServicesModel(
            name: 'Compact/Setting powder',
            price: 15,
          ),
          ServicesModel(
            name: 'Eyeshadow',
            price: 15,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.nails,
        icon: Assets.nails,
        color: const Color(0xFFFFB319),
        services: [
          ServicesModel(
            name: 'Oval',
            price: 7,
          ),
          ServicesModel(
            name: 'Almond',
            price: 12,
          ),
          ServicesModel(
            name: 'Square',
            price: 15,
          ),
          ServicesModel(
            name: 'Coffin',
            price: 18,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shampoo,
        icon: Assets.shampoo,
        color: const Color(0xFF22577A),
        services: [
          ServicesModel(
            name: 'Regular',
            price: 15,
          ),
          ServicesModel(
            name: 'Special',
            price: 25,
          ),
        ]
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shaving,
        icon: Assets.shaving,
        color: const Color(0xFF7EB5A6),
        services: [
          ServicesModel(
            name: 'Disposable',
            price: 12,
          ),
          ServicesModel(
            name: 'Cartridge',
            price: 7,
          ),
          ServicesModel(
            name: 'Safety',
            price: 17,
          ),
          ServicesModel(
            name: 'Electric',
            price: 15,
          ),
        ]
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.spa,
        icon: Assets.spa,
        color: const Color(0xFF2A0944),
        services: [
          ServicesModel(
            name: 'Regular',
            price: 15,
          ),
          ServicesModel(
            name: 'Special',
            price: 25,
          ),
        ]
      ),
      ];

List<CategoryModel> femaleServiceList(BuildContext context) => [
      CategoryModel(
        name: AppLocalizations.of(context)!.coloring,
        icon: Assets.coloring,
        color: const Color(0xFF00A19D),
        services: [
          ServicesModel(
            name: 'Solid Color',
            price: 12,
          ),
          ServicesModel(
            name: 'Rainbow',
            price: 15,
          ),
          ServicesModel(
            name: 'Custom',
            price: 25,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.haircut,
        icon: Assets.haircut,
        color: const Color(0xFFFF0000),
        services: [
          ServicesModel(
            name: 'The Classic French Bob',
            price: 12,
          ),
          ServicesModel(
            name: 'Chin-Length Chic Haircut',
            price: 15,
          ),
          ServicesModel(
            name: 'Comb Over Bob Cut',
            price: 11,
          ),
          ServicesModel(
            name: 'Shaggy Lob Cut',
            price: 22,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.hairstyle,
        icon: Assets.hairstyle,
        color: const Color(0xFF3B0000),
        services: [
          ServicesModel(
            name: 'Straight',
            price: 12,
          ),
          ServicesModel(
            name: 'Wavy',
            price: 23,
          ),
          ServicesModel(
            name: 'Curly',
            price: 25,
          ),
          ServicesModel(
            name: 'Tightly Curled',
            price: 15,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.makeup,
        icon: Assets.makeUp,
        color: const Color(0xFF6F69AC),
        services: [
          ServicesModel(
            name: 'Primer',
            price: 15,
          ),
          ServicesModel(
            name: 'Concealer',
            price: 12,
          ),
          ServicesModel(
            name: 'Foundation',
            price: 5,
          ),
          ServicesModel(
            name: 'Compact/Setting powder',
            price: 15,
          ),
          ServicesModel(
            name: 'Eyeshadow',
            price: 15,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.nails,
        icon: Assets.nails,
        color: const Color(0xFFFFB319),
        services: [
          ServicesModel(
            name: 'Oval',
            price: 7,
          ),
          ServicesModel(
            name: 'Almond',
            price: 12,
          ),
          ServicesModel(
            name: 'Square',
            price: 15,
          ),
          ServicesModel(
            name: 'Coffin',
            price: 18,
          ),
        ],
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shampoo,
        icon: Assets.shampoo,
        color: const Color(0xFF22577A),
        services: [
          ServicesModel(
            name: 'Regular',
            price: 15,
          ),
          ServicesModel(
            name: 'Special',
            price: 25,
          ),
        ]
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.spa,
        icon: Assets.spa,
        color: const Color(0xFF2A0944),
        services: [
          ServicesModel(
            name: 'Regular',
            price: 15,
          ),
          ServicesModel(
            name: 'Special',
            price: 25,
          ),
        ]
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.eye_makeup,
        icon: Assets.eyeMakeup,
        color: const Color(0xFFE05D5D),
        services: [
          ServicesModel(
            name: 'Natural',
            price: 15,
          ),ServicesModel(
            name: 'Shimmery',
            price: 22,
          ),ServicesModel(
            name: 'Cat Eyes',
            price: 12,
          ),ServicesModel(
            name: 'Gradient',
            price: 25,
          ),
        ]
      ),
    ];
