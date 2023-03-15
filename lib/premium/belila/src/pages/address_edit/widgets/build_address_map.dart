part of '../address_edit_page.dart';

class _BuildAddressMap extends StatelessWidget {
  final MapCreatedCallback? onMapCreated;
  final ArgumentCallback<LatLng>? onMapTaped;
  final Set<Marker> currentMarker;
  final TextEditingController addressController;
  final TextEditingController regionController;
  final TextEditingController cityController;
  final TextEditingController districtController;
  final TextEditingController villageController;
  final TextEditingController zipCodeController;
  final double? latitude;
  final double? longitude;
  final bool isLoading;
  final VoidCallback onTap;

  const _BuildAddressMap({
    Key? key,
    this.onMapCreated,
    this.onMapTaped,
    required this.currentMarker,
    required this.addressController,
    required this.regionController,
    required this.cityController,
    required this.districtController,
    required this.villageController,
    required this.zipCodeController,
    this.latitude,
    this.longitude,
    this.isLoading = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        GoogleMap(
          onMapCreated: onMapCreated,
          onTap: onMapTaped,
          zoomControlsEnabled: false,
          initialCameraPosition: CameraPosition(
            target: LatLng(latitude ?? 0.0, longitude ?? 0.0),
            zoom: 2,
          ),
          markers: currentMarker,
        ),
        Positioned(
          child: DraggableScrollableSheet(
            initialChildSize: .3,
            minChildSize: .2,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(Const.space25),
                    topRight: Radius.circular(Const.space25),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                  ),
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
                      const SizedBox(height: Const.space25),
                      Text(
                        AppLocalizations.of(context)!.current_address,
                        style: theme.textTheme.displaySmall,
                      ),
                      const SizedBox(height: Const.space25),
                      Text(
                        AppLocalizations.of(context)!.address,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        controller: addressController,
                        hintText: AppLocalizations.of(context)!.address,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        AppLocalizations.of(context)!.province,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        controller: regionController,
                        hintText: AppLocalizations.of(context)!.province,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        AppLocalizations.of(context)!.city,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        controller: cityController,
                        hintText: AppLocalizations.of(context)!.city,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        AppLocalizations.of(context)!.district,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        controller: districtController,
                        hintText: AppLocalizations.of(context)!.district,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        AppLocalizations.of(context)!.village,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        controller: villageController,
                        hintText: AppLocalizations.of(context)!.village,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        AppLocalizations.of(context)!.zip_code,
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        controller: zipCodeController,
                        textFieldType: TextFieldType.number,
                        hintText: AppLocalizations.of(context)!.zip_code,
                      ),
                      const SizedBox(height: Const.space25),
                      CustomElevatedButton(
                        isLoading: isLoading,
                        onTap: onTap,
                        label: AppLocalizations.of(context)!.save,
                      ),
                      const SizedBox(height: Const.space25),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
