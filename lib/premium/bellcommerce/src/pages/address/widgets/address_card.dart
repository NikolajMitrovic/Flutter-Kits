part of '../address_page.dart';

class _AddressCard extends StatelessWidget {
  final AddressModel? address;
  final void Function()? onPressed;

  const _AddressCard({Key? key, this.address, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: address!.isSelected!
                ? Theme.of(context).primaryColor
                : Theme.of(context).disabledColor,
            width: address!.isSelected! ? 2.0 : 2.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              address!.fullName!,
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              address!.streetAddress!,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              address!.phoneNumber!,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: CustomElevatedButton(
                    label: AppLocalizations.of(context)!.edit,
                    onTap: () {
                      Get.toNamed<dynamic>(
                        BellcommerceRoutes.addressEdit,
                        arguments: address,
                      );
                    },
                  ),
                ),
                const SizedBox(width: 15),
                IconButton(
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () => _showDeleteConfirmation(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future _showDeleteConfirmation(BuildContext context) {
    return showDialog<dynamic>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          title: Text(
            AppLocalizations.of(context)!.are_you_sure_wanna_delete_address,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back<dynamic>();
              },
              child: Text(
                AppLocalizations.of(context)!.cancel,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back<dynamic>();
                showToast(msg: 'Confirm delete clicked!');
              },
              child: Text(
                AppLocalizations.of(context)!.delete,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        );
      },
    );
  }
}
