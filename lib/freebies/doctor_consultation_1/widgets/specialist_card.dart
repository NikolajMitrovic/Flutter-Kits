import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialistCard extends StatelessWidget {
  final String? name;
  final String? doctor;
  final String? icon;
  final Color? color;

  const SpecialistCard({
    Key? key,
    this.name,
    this.doctor,
    this.icon,
    this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 110,
      margin: const EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: color,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            icon ?? '',
            width: 45,
            color: Colors.white,
          ),
          const SizedBox(height: 12),
          Text(
            name ?? '',
            textAlign: TextAlign.center,
            style: theme.textTheme.displaySmall
                ?.copyWith(height: 1, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text('$doctor Doctors',
              style: theme.textTheme.titleSmall?.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
