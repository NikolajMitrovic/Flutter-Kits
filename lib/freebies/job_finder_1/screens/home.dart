import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/models/company_model.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/widgets/company_card.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/widgets/company_card2.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/widgets/recent_job_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : kSilver,
      appBar: AppBar(
        backgroundColor : kSilver,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            top: 12,
            bottom: 12,
            right: 12,
          ),
          child: SvgPicture.asset(
            CustomIcons.drawer,
            color: kBlack,
          ),
        ),
        actions: <Widget>[
          SvgPicture.asset(
            CustomIcons.user,
            width: 25,
            color: kBlack,
          ),
          const SizedBox(width: 18)
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 25),
              Text(
                'Hi Robert,\nFind your Dream Job',
                style: kPageTitleStyle,
              ),
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(right: 18),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                            icon: const Icon(
                              Icons.search,
                              size: 25,
                              color: kBlack,
                            ),
                            border: InputBorder.none,
                            hintText: 'Search for job title',
                            hintStyle: kSubtitleStyle.copyWith(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                        color: kBlack,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        FeatherIcons.sliders,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Text(
                'Popular Company',
                style: kTitleStyle,
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 190,
                child: ListView.builder(
                  itemCount: companyList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final company = companyList[index];
                    return InkWell(
                      onTap: () {},
                      child: (index == 0)
                          ? CompanyCard(company: company)
                          : CompanyCard2(company: company),
                    );
                  },
                ),
              ),
              const SizedBox(height: 35),
              Text(
                'Recent Jobs',
                style: kTitleStyle,
              ),
              ListView.builder(
                itemCount: recentList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  final recent = recentList[index];
                  return InkWell(
                    onTap: () {},
                    child: RecentJobCard(company: recent),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
