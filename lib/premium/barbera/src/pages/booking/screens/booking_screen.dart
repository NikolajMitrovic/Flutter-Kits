part of '../booking_page.dart';

enum Gender { male, female }
enum Location { barbershop, home }

class BarberaBookingServiceScreen extends StatefulWidget {
  const BarberaBookingServiceScreen({Key? key}) : super(key: key);

  @override
  State<BarberaBookingServiceScreen> createState() => _BarberaBookingServiceScreenState();
}

class _BarberaBookingServiceScreenState extends State<BarberaBookingServiceScreen> {
  Gender _genderPicked = Gender.male;
  Location _locationPicked = Location.barbershop;
  bool _isHomeSelected = false;
  bool _isSalonSelected = false;
  bool _isMaleSelected = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const _BuildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                width: Screens.width(context),
                padding: const EdgeInsets.symmetric(horizontal: Const.margin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Text(AppLocalizations.of(context)!.select_location,
                        style: theme.textTheme.headlineMedium),
                    Row(
                      children: [
                        Radio<Location?>(
                          value: Location.barbershop,
                          groupValue: _locationPicked,
                          focusColor: theme.primaryColor,
                          activeColor: theme.primaryColor,
                          hoverColor: theme.unselectedWidgetColor,
                          onChanged: (Location? value) {
                            setState(() {
                              _locationPicked = value!;
                              _isHomeSelected = false;
                              _isSalonSelected = false;
                            });
                          },
                        ),
                        Text(
                          AppLocalizations.of(context)!.barbershop,
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(width: Const.space25),
                        Radio<Location?>(
                          value: Location.home,
                          groupValue: _locationPicked,
                          focusColor: theme.primaryColor,
                          activeColor: theme.primaryColor,
                          hoverColor: theme.unselectedWidgetColor,
                          onChanged: (Location? value) {
                            setState(() {
                              _locationPicked = value!;
                              _isHomeSelected = true;
                              _isSalonSelected = true;
                            });
                          },
                        ),
                        Text(
                          AppLocalizations.of(context)!.home,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    if (_isSalonSelected)
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)!.your_address,
                        ),
                        validator: (val) => null,
                        onChanged: (val) {},
                      )
                    else
                      Container(),
                    const SizedBox(height: Const.space12),
                    Text(
                      AppLocalizations.of(context)!.gender,
                      style: theme.textTheme.headlineMedium,
                    ),
                    Row(
                      children: [
                        Radio<Gender?>(
                          value: Gender.male,
                          groupValue: _genderPicked,
                          focusColor: theme.primaryColor,
                          activeColor: theme.primaryColor,
                          hoverColor: theme.unselectedWidgetColor,
                          onChanged: (Gender? value) {
                            setState(() {
                              _genderPicked = value!;
                              _isMaleSelected = true;
                            });
                          },
                        ),
                        Text(
                          AppLocalizations.of(context)!.male,
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(width: Const.space25),
                        Radio<Gender?>(
                          value: Gender.female,
                          groupValue: _genderPicked,
                          focusColor: theme.primaryColor,
                          activeColor: theme.primaryColor,
                          hoverColor: theme.unselectedWidgetColor,
                          onChanged: (Gender? value) {
                            setState(() {
                              _genderPicked = value!;
                              _isMaleSelected = false;
                            });
                          },
                        ),
                        Text(
                          AppLocalizations.of(context)!.female,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: Const.space12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppLocalizations.of(context)!.choose_your_service,
                            style: theme.textTheme.bodyMedium),
                        Text('${AppLocalizations.of(context)!.total}: \$45.00',
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(color: Colors.green)),
                      ],
                    ),
                    if (_isHomeSelected == false && _isMaleSelected == true)
                      // listServices(maleSalonList)
                      _BuildListService(services: serviceList(context))
                    else
                      _isHomeSelected == true && _isMaleSelected == true
                          // ? listServices(maleHomeList)
                          ? _BuildListService(services: maleServiceList(context))
                          : _isHomeSelected == false && _isMaleSelected == false
                              // ? listServices(femaleSalonList)
                              ? _BuildListService(
                                  services: femaleServiceList(context))
                              : _isHomeSelected == true &&
                                      _isMaleSelected == false
                                  // ? listServices(femaleHomeList)
                                  ? _BuildListService(
                                      services: femaleServiceList(context))
                                  : Container(),
                    CustomElevatedButton(
                      onTap: () => Get.toNamed<dynamic>(BarberaRoutes.schedule),
                      label: AppLocalizations.of(context)!.next,
                    ),
                    const SizedBox(height: Const.space25),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
