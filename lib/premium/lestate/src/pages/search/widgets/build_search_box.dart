part of '../search_page.dart';

class _BuildSearchBox extends StatelessWidget {
  const _BuildSearchBox({
    Key? key,
    required this.searchController,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController searchController;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 45,
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: searchController,
              hintText: AppLocalizations.of(context)!.search_your_property,
              onChanged: onChanged,
              preffixIcon: IconButton(
                onPressed: () => Get.toNamed<dynamic>(
                  LestateRoutes.search,
                  arguments: searchController.text,
                ),
                icon: const Icon(FeatherIcons.search),
                color: theme.primaryColor,
              ),
            ),
          ),
          const SizedBox(width: Const.space15),
          InkWell(
            onTap: () => Get.toNamed<dynamic>(LestateRoutes.filter),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.radius),
                color: theme.primaryColor,
              ),
              child: const Icon(
                IconlyBold.filter2,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
