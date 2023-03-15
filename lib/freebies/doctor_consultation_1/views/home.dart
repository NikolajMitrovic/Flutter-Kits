import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/helpers/colors.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/helpers/contants.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/models/doctor_model.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/widgets/consultation_card.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/widgets/doctor_card.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/widgets/specialist_card.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: CachedNetworkImageProvider('https://i.pinimg.com/564x/c5/da/8c/c5da8c9678816489b932437d60f274cd.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text('Melody', style: theme.textTheme.displaySmall),
            subtitle: Text(
              'Find your suitable doctor here',
              style: theme.textTheme.titleSmall,
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: theme.cardColor,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.date_range,
                  color: kGreenColor,
                  size: 30,
                ),
                onPressed: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeTheme();
                },
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 45),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 18),
              alignment: Alignment.center,
              child: const TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: kPrimaryLightColor),
                  hintText: 'Search doctor, categories, topic . . . .',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text('Specialist', style: theme.textTheme.displaySmall),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  SpecialistCard(
                    name: 'Cardio Specialist',
                    color: kGreenColor,
                    doctor: '27',
                    icon: CustomIcons.cardio,
                  ),
                  SpecialistCard(
                    name: 'Heart\nIssue',
                    color: kBlueColor,
                    doctor: '57',
                    icon: CustomIcons.heart,
                  ),
                  SpecialistCard(
                    name: 'Dental\nCard',
                    color: kOrangeColor,
                    doctor: '17',
                    icon: CustomIcons.dental,
                  ),
                  SpecialistCard(
                    name: 'Physio\nTherapy',
                    color: kPurpleColor,
                    doctor: '32',
                    icon: CustomIcons.wheelchair,
                  ),
                  SpecialistCard(
                    name: 'Eyes\nSpecialist',
                    color: kGreenColor,
                    doctor: '32',
                    icon: CustomIcons.eyes,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                itemCount: consultationList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = consultationList[index];
                  return ConsultationCard(consultation: item);
                },
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: <Widget>[
                  Text('Top Doctor', style: theme.textTheme.displaySmall),
                  const Spacer(),
                  Text('View all', style: theme.textTheme.titleMedium),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                itemCount: doctorList.length,
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final doctor = doctorList[index];

                  return DoctorCard(doctor: doctor);
                },
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
