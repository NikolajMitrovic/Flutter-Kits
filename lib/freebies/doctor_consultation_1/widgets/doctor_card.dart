import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/models/doctor_model.dart';

class DoctorCard extends StatelessWidget {
  final DoctorModel doctor;

  const DoctorCard({Key? key, required this.doctor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(left: 18, bottom: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: OctoImage(
                  image: CachedNetworkImageProvider(
                    doctor.image ?? '',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(doctor.name ?? '',
                overflow: TextOverflow.clip,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall),
            const SizedBox(height: 6),
            Text(doctor.specialist ?? '',
                overflow: TextOverflow.clip,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
