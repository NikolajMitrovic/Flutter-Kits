import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/toast.dart';
import 'package:ultimate_bundle/premium/belila/src/models/address_model.dart';
import 'package:ultimate_bundle/premium/belila/src/utils/location_utils.dart';
import 'package:ultimate_bundle/premium/belila/src/widgets/custom_app_bar.dart';
import 'package:ultimate_bundle/premium/belila/src/widgets/custom_elevated_button.dart';
import 'package:ultimate_bundle/premium/belila/src/widgets/custom_text_form_field.dart';

part 'screens/address_edit_screen.dart';
part 'widgets/build_address_map.dart';
part 'widgets/build_contact_person.dart';
