part of '../nearby_page.dart';

Future<dynamic> _changeAddressBottomSheet(
  BuildContext context, {
  required TextEditingController controller,
}) {
  final theme = Theme.of(context);
  return showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor : theme.cardColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Const.radius),
          topRight: Radius.circular(Const.radius),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
          ),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Const.radius),
              topRight: Radius.circular(Const.radius),
            ),
          ),
          width: Screens.width(context),
          height: 230,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Const.space8),
              Center(
                child: Container(
                  width: 50,
                  height: 3,
                  decoration: BoxDecoration(
                    color: theme.hintColor,
                    borderRadius: BorderRadius.circular(
                      Const.radius,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                AppLocalizations.of(context)!.change_address,
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: Const.space15),
              CustomTextFormField(
                controller: controller,
                hintText: AppLocalizations.of(context)!.address,
              ),
              const SizedBox(height: Const.space12),
              CustomElevatedButton(
                onTap: () {
                  Get.back<dynamic>();
                  showToast(msg: AppLocalizations.of(context)!.address_changed);
                },
                label: AppLocalizations.of(context)!.apply,
              )
            ],
          ),
        );
      });
}
