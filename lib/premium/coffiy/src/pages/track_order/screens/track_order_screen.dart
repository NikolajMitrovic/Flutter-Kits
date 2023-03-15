part of '../track_order_page.dart';

class CoffiyTrackOrderScreen extends StatefulWidget {
  const CoffiyTrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<CoffiyTrackOrderScreen> createState() => _CoffiyTrackOrderScreenState();
}

class _CoffiyTrackOrderScreenState extends State<CoffiyTrackOrderScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await Get.offAllNamed<dynamic>(CoffiyRoutes.order);
        return true;
      },
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          title: AppLocalizations.of(context)!.track_my_order,
          leadingOntap: () {
            Get.offAllNamed<dynamic>(CoffiyRoutes.order);
          },
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                initialCameraPosition: _kGooglePlex,
                onMapCreated: _controller.complete,
              ),
            ),
            const _BuildOwnerTile(),
            const _BuildTrackDelivery(),
          ],
        ),
      ),
    );
  }
}
