part of '../address_page.dart';

class AddressCard extends StatefulWidget {
  const AddressCard({
    Key? key,
    required this.address,
  }) : super(key: key);

  final AddressModel address;

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: Const.space15),
      child: Container(
        width: Screens.width(context),
        height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Const.radius),
          color:
              // (widget.address.id == _user.user!.address?.id)
              //     ? theme.primaryColor
              //     :
              theme.cardColor,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: Const.space15,
          vertical: Const.space8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.address.name ?? '',
                  style: theme.textTheme.displaySmall?.copyWith(
                      // color: (widget.address.id == _user.user?.address?.id)
                      //     ? Colors.white
                      //     : null,
                      ),
                ),
                InkWell(
                  onTap: () {
                    _onModalBottomSheetTap(context, address: widget.address);
                  },
                  child: const Icon(
                    FeatherIcons.moreVertical,
                    size: 22,
                    // color: (widget.address.id == _user.user?.address?.id)
                    //     ? Colors.white
                    //     : null,
                  ),
                )
              ],
            ),
            const SizedBox(height: Const.space5),
            Text(
              widget.address.phone ?? '',
              style: theme.textTheme.bodyMedium?.copyWith(
                  // color: (widget.address.id == _user.user?.address?.id)
                  //     ? Colors.white
                  //     : null,
                  ),
            ),
            const SizedBox(height: Const.space5),
            Text(
              widget.address.address ?? '',
              style: theme.textTheme.titleSmall?.copyWith(
                  // color: (widget.address.id == _user.user?.address?.id)
                  //     ? Colors.white
                  //     : null,
                  ),
              maxLines: 1,
            ),
            const SizedBox(height: Const.space5),
            Text(
              'Ds. ${widget.address.village!}, Kec.${widget.address.district!}',
              style: theme.textTheme.titleSmall?.copyWith(
                  // color: (widget.address.id == _user.user?.address?.id)
                  //     ? Colors.white
                  //     : null,
                  ),
              maxLines: 1,
            ),
            Text(
              'Prov. ${widget.address.region}',
              style: theme.textTheme.titleSmall?.copyWith(
                  // color: (widget.address.id == _user.user?.address?.id)
                  //     ? Colors.white
                  //     : null,
                  ),
              maxLines: 1,
            ),
            const SizedBox(height: Const.space5),
            Text(
              // ignore: lines_longer_than_80_chars
              '${AppLocalizations.of(context)!.zip_code}: ${widget.address.zipCode}',
              style: theme.textTheme.titleSmall?.copyWith(
                  // color: (widget.address.id == _user.user?.address?.id)
                  //     ? Colors.white
                  //     : null,
                  ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _onModalBottomSheetTap(
    BuildContext context, {
    required AddressModel address,
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
              CustomTextButton(
                label: AppLocalizations.of(context)!.select_as_primary_address,
                onTap: () {
                  Get.back<dynamic>();
                  showToast(
                    msg: AppLocalizations.of(context)!
                        .primary_address_has_been_set,
                  );
                },
                style: theme.textTheme.bodyLarge,
              ),
              CustomTextButton(
                label: AppLocalizations.of(context)!.edit,
                onTap: () {
                  Get.back<dynamic>();
                  // ignore: cascade_invocations
                  Get.toNamed<dynamic>(
                    BelilaRoutes.addressEdit,
                    arguments: address,
                  );
                },
                style: theme.textTheme.bodyLarge,
              ),
              CustomTextButton(
                label: AppLocalizations.of(context)!.delete,
                onTap: () {
                  Get.back<dynamic>();
                  showToast(
                    msg: AppLocalizations.of(context)!
                        .address_deleted,
                  );
                },
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: Const.space25),
            ],
          ),
        );
      },
    );
  }
}
