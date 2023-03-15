import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/helpers/constants.dart'; 
import 'package:ultimate_bundle/freebies/job_finder_1/models/company_model.dart';

class RecentJobCard extends StatelessWidget {
  final CompanyModel company;

  const RecentJobCard({Key? key, required this.company}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(right: 18, top: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(company.image!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(company.job!, style: kTitleStyle),
        subtitle: Text(
          '${company.companyName} • ${company.mainCriteria}',
        ),
        trailing: const Icon(
          Icons.more_vert,
          color: kBlack,
        ),
      ),
    );
  }
}
