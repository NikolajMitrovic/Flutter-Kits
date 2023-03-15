import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';

part 'models/sneaker_model.dart';
part 'screens/sneaker_bottom_nav_screen.dart';
part 'screens/sneaker_home_screen.dart';
part 'widgets/horizontal_card.dart';
part 'widgets/sneaker_card_type_2.dart';

class FreebiesSneakerScreen extends StatelessWidget {
  const FreebiesSneakerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sneakers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFF020202),
          backgroundColor : Colors.white,
          cardColor: const Color(0xFFF2F8F8),
          textTheme: GoogleFonts.poppinsTextTheme().copyWith(
            displayLarge: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF020202),
            ),
            displayMedium: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF020202),
            ),
            displaySmall: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF020202),
            ),
            headlineMedium: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF020202),
            ),
            bodyLarge: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: const Color(0xFF808485),
            ),
            bodyMedium: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: const Color(0xFF808485),
            ),
          )),
      home: const SneakerBottomNavScreen(),
    );
  }
}
