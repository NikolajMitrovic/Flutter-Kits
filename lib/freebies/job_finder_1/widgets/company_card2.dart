import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/models/company_model.dart';

class CompanyCard2 extends StatelessWidget {
  final CompanyModel company;

  const CompanyCard2({Key? key, required this.company}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
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
              const Spacer(),
              Text(
                company.sallary!,
                style: kTitleStyle,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            company.job!,
            style: kTitleStyle,
          ),
          const SizedBox(height: 15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: company.companyName,
                  style: kSubtitleStyle,
                ),
                TextSpan(
                  text: '  •  ',
                  style: kSubtitleStyle,
                ),
                TextSpan(
                  text: company.city,
                  style: kSubtitleStyle,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: company.tag!
                .map(
                  (e) => Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(
                        color: kBlack,
                        width: 0.5,
                      ),
                    ),
                    child: Text(
                      e,
                      style: kSubtitleStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
