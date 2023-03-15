part of '../sign_in_page.dart';

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        ShakeTransition(
          duration:const Duration(milliseconds: 600),
          child: Text(
            'Belila.',
            style: GoogleFonts.dmSans(
              fontSize: 48,
              color: theme.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
