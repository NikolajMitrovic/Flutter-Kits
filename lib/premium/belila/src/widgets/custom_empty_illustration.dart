import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/constants.dart';
  

class CustomEmptyIllustration extends StatelessWidget {
  final String? description;
  final String? image;
  final Future<void> Function()? onRefresh;
  const CustomEmptyIllustration({
    Key? key,
    this.description,
    this.image,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        onRefresh: onRefresh ?? () async {},
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Const.margin,
                vertical: MediaQuery.of(context).size.height * 0.2,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    image!,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  const SizedBox(height: Const.space15),
                  Text(
                    description!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
