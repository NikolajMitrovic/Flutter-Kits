import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/helpers/colors.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/models/doctor_model.dart';

class ConsultationCard extends StatelessWidget {
  final ConsultationModel consultation;

  const ConsultationCard({Key? key, required this.consultation})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(left: 18, bottom: 5),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: 250,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 70,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Text(
                  '\$${consultation.price}',
                  style:
                      theme.textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 15,
              right: 18,
              bottom: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(consultation.title ?? '',
                      style: theme.textTheme.displaySmall),
                  const SizedBox(height: 15),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 2,
                          color: kGreenColor,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            consultation.subtitle ?? '',
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
