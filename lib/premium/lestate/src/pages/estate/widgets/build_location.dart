part of '../estate_page.dart';

class _BuildLocation extends StatelessWidget {
  final EstateModel estate;

  const _BuildLocation({
    Key? key,
    required this.estate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.location,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space12),
          Row(
            children: [
              const Icon(IconlyBold.location),
              const SizedBox(width: Const.space8),
              Text(
                estate.location ?? '',
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: Const.space12),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(47.6, 8.8796),
                zoom: 16,
              ),
              markers: <Marker>{
                const Marker(
                  markerId: MarkerId('marker_1'),
                  position: LatLng(47.6, 8.8796),
                  consumeTapEvents: true,
                ),
              },
              myLocationEnabled: true,
              onMapCreated: (controller) {
                Future.delayed(const Duration(seconds: 2), () {
                  controller.animateCamera(
                    CameraUpdate.newCameraPosition(
                      const CameraPosition(
                        bearing: 270,
                        target: LatLng(47.6, 8.8796),
                        tilt: 30,
                        zoom: 18,
                      ),
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
