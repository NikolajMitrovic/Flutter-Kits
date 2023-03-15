import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/flutima/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/flutima/pages/ui_detail/ui_detail_page.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/bakery_store_1_page.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/main.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/doctor_consultation_1_page.dart';
import 'package:ultimate_bundle/freebies/ecommerce_1/ecommerce_1_page.dart';
import 'package:ultimate_bundle/freebies/evite/evite_page.dart';
import 'package:ultimate_bundle/freebies/furniture_1/furniture_1_page.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/home_rent_1_page.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/job_finder_1_page.dart';
import 'package:ultimate_bundle/freebies/logitech_store/main.dart';
import 'package:ultimate_bundle/freebies/movie/movie_page.dart';
import 'package:ultimate_bundle/freebies/sneakers/sneaker_page.dart';
import 'package:ultimate_bundle/premium/barbera/barbera_index.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/about/about_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/add_credit_card/add_credit_card_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/appointment/appointment_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/appointment_detail/appointment_detail_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/barber/barber_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/barbershop/barbershop_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking/booking_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking_detail/booking_detail_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking_payment/booking_payment_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/booking_success/booking_success_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/browse_barber/browse_barber_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/browse_barbershop/browse_barbershop_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/change_password/change_password_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/chat/chat_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/comment/comment_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/create_new_password/create_new_password_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/favorite/favorite_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/filter/filter_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/followers/followers_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/following/following_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/forgot_password_success/forgot_password_success_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/gallery/gallery_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/language/language_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/like/like_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/notification/notification_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/otp_verification/otp_verification_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/payment_method/payment_method_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/paypal/paypal_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/phone_verification/phone_verification_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/profile_edit/profile_edit_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/schedule/schedule_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/search/search_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/social_network_sign_in/social_network_sign_in_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/support/support_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:ultimate_bundle/premium/belila/belila_index.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/address/address_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/address_add/address_add_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/address_edit/address_edit_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/archived_inbox/archived_inbox_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/cart/cart_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/change_password/change_password_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/chat/chat_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/checkout/checkout_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/favorite/favorite_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/inbox/inbox_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/new_password/new_password_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/notifications/notification_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/order/order_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/order_detail/order_detail_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/photo_view/photo_view_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/photo_view_list/photo_view_list_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/product/product_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/product_browse/product_browse_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/profile/profile_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/profile_edit/profile_edit_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/reset_password/reset_password_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/reset_password_otp/reset_password_otp_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/sign_up/sign_up_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/store/store_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/track_delivery/track_delivery_page.dart';
import 'package:ultimate_bundle/premium/belila/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:ultimate_bundle/premium/bellcommerce/main.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/activity/activity_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/address/address_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/address_add/address_add_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/address_edit/address_edit_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/browse_category/browse_category_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/browse_product/browse_product_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/checkout/checkout_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/checkout_payment/checkout_payment_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/feeds/feeds_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/forgot_password_success/forgot_password_success_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/notification/notification_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/offer/offer_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/order/order_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/order_detail/order_detail_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/payment/payment_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/product/product_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/profile_detail/profile_detail_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/profile_edit/profile_edit_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/review/review_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/search/search_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/pages/sign_up/sign_up_page.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/widgets/custom_buttom_navigation_bar.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/widgets/custom_photo_list_view.dart';
import 'package:ultimate_bundle/premium/coffiy/coffiy_index.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/cart/cart_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/change_password/change_password_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/chat/chat_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/coffee/coffee_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/order_success/order_success_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/otp_email/otp_email_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/profile/profile_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/redeem/redeem_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/sign_up/sign_up_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/track_order/track_order_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:ultimate_bundle/premium/foodiy/main.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/bottom_navigation/bottom_nav_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/food/food_detail.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/order/checkout_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/order/order_detail_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/order/order_success_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/order/payment_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/order/paypal_payment_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/profile/change_language_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/profile/setting_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/sign_up/sign_up_user_address_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/sign_up/signup_page.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/social_network/social_network_page.dart';
import 'package:ultimate_bundle/premium/furney/main.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/address/address_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/category/category_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/checkout/checkout_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/credit_card/credit_card_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/favorite/favorite_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/forgot_password_success/forgot_password_success_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/language/language_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/notification/notification_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/order/order_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/product/product_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/profile/profile_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/sign_up/sign_up_page.dart';
import 'package:ultimate_bundle/premium/lestate/lestate_index.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/account/account_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/browse_estate/browse_estate_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/change_password/change_password_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/chat/chat_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/estate/estate_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/filter/filter_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/otp_email/otp_email_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/otp_phone/otp_phone_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/payment/payment_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/payment_success/payment_success_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/search/search_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/setting/setting_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/sign_up/sign_up_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/summary/summary_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:ultimate_bundle/premium/movlix/movlix_index.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/browse_movie/browse_movie_page.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/genre/genre_page.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/movie/movie_page.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/search/search_page.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/video_player/video_player_page.dart';
import 'package:ultimate_bundle/premium/movlix/src/widgets/custom_bottom_navigation_bar.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding1/onboarding1_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding2/onboarding2_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding3/onboarding3_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding4/onboarding4_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding5/onboarding5_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding6/onboarding6_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding7/onboarding7_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding8/onboarding8_page.dart';
import 'package:ultimate_bundle/premium/on_boarding/src/pages/onboarding9/onboarding9_page.dart';
import 'package:ultimate_bundle/premium/shuppy/main.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/address/address_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/bottom_navigation/bottom_navigation_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/category/category_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/checkout/checkout_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/favorite/favorite_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/forgot_password/forgot_password_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/language/language_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/notification/notification_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/order/order_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/payment/payment_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/product/product_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/profile/profile_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/shuppy/src/pages/sign_up/sign_up_page.dart';
import 'package:ultimate_bundle/premium/treshop/main.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/address/address_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/address_add/address_add_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/all_product/all_product_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/category/category_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/chat/chat_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/checkout/checkout_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/coupon/coupon_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/favorite/favorite_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/language/language_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/new_password/new_password_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/on_boarding/on_boarding_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/order/order_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/order_detail/order_detail_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/payment/payment_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/product/product_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/profile_detail/profile_detail_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/profile_edit/profile_edit_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/reset_password/reset_password.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/reset_password_success/reset_password_success_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/search/search_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/shipping/shipping_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/sign_in/sign_in_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/sign_up/sign_up_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/tracking_order/tracking_order_page.dart';
import 'package:ultimate_bundle/premium/treshop/src/pages/wallet/wallet_page.dart';

List<GetPage> allRoutesFlutima = [
  // Core
  GetPage<dynamic>(
    name: UIKitRoutes.uiDetail,
    page: () => const UIDetailScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.setting,
    page: () => const SettingsScreen(),
  ),
  // UI Kit Routes
  GetPage<dynamic>(
    name: UIKitRoutes.barbera,
    page: () => const BarberaSplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.belila,
    page: () => const BelilaSplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.bellcommerce,
    page: () => const BellcommerceSplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.coffiy,
    page: () => const CoffiySplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.foodiy,
    page: () => const FoodiySplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.furney,
    page: () => const FurneySplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.lestate,
    page: () => const LestateSplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.movlix,
    page: () => const MovlixSplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.shuppy,
    page: () => const ShuppySplashScreen(),
  ),
  GetPage<dynamic>(
    name: UIKitRoutes.treshop,
    page: () => const TreshopSplashScreen(),
  ),

  // --------------------------------------------------------------------------
  // Freebies Routes
  GetPage<dynamic>(
    name: FreebiesRoutes.sneaker,
    page: () => const FreebiesSneakerScreen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.movie,
    page: () => const FreebiesMovieScreen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.ecommerce1,
    page: () => const FreebiesEcommerce1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.furniture1,
    page: () => const FreebiesFurniture1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.homeRent1,
    page: () => const FreebiesHomeRent1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.doctorConsultation1,
    page: () => const FreebiesDoctorConsultation1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.jobFinder1,
    page: () => const FreebiesJobFinder1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.bakeryStore1,
    page: () => const FreebiesBakeryStore1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.barbershop1,
    page: () => const FreebiesBarbershop1Screen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.logitechStore,
    page: () => const FreebiesLogitechStoreScreen(),
  ),
  GetPage<dynamic>(
    name: FreebiesRoutes.evite,
    page: () => const FreebiesEviteScreen(),
  ),

  // --------------------------------------------------------------------------
  // Barbera Routes

  GetPage<dynamic>(
    name: BarberaRoutes.splash,
    page: () => const BarberaSplashScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.onBoarding,
    page: () => const BarberaOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.socialNetwork,
    page: () => const BarberaSocialNetworkSignInScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.signIn,
    page: () => const BarberaSignInScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.forgotPassword,
    page: () => const BarberaForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.forgotPasswordSuccess,
    page: () => const BarberaForgotPasswordSuccess(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.createNewPassword,
    page: () => const BarberaCreateNewPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.changePassword,
    page: () => const BarberaChangePasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.signUp,
    page: () => const BarberaSignInScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.phoneVerification,
    page: () => const BarberaPhoneVerificationScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.otpVerification,
    page: () => const BarberaOTPVerificationScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.home,
    page: () => const BarberaCustomBottomNavigationBar(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.nearby,
    page: () => const BarberaCustomBottomNavigationBar(selectedIndex: 1),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.inbox,
    page: () => const BarberaCustomBottomNavigationBar(selectedIndex: 2),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.appointment,
    page: () => const BarberaCustomBottomNavigationBar(selectedIndex: 3),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.profile,
    page: () => const BarberaCustomBottomNavigationBar(selectedIndex: 4),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.filter,
    page: () => const BarberaFilterScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.chat,
    page: () => const BarberaChatScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.appointment,
    page: () => const BarberaAppointmentScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.appointmentDetail,
    page: () => const BarberaAppointmentDetailScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.favorite,
    page: () => const BarberaFavoriteScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.paymentMethod,
    page: () => const BarberaPaymentMethodScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.addCreditCard,
    page: () => const BarberaAddCreditCardScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.paypal,
    page: () => const BarberaPaypalScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.support,
    page: () => const BarberaSupportScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.language,
    page: () => const BarberaLanguageScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.about,
    page: () => const BarberaAboutScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.following,
    page: () => const BarberaFollowingScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.follower,
    page: () => const BarberaFollowersScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.like,
    page: () => const BarberaLikeScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.setting,
    page: () => const BarberaSettingScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.notification,
    page: () => const BarberaNotificationScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.browseBarbershop,
    page: () => const BarberaBrowseBarbershopScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.browseBarber,
    page: () => const BarberaBrowseBarberScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.profileEdit,
    page: () => const BarberaProfileEditScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.search,
    page: () => const BarberaSearchScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.barbershop,
    page: () => const BarberaBarbershopScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.barber,
    page: () => const BarberaBarberScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.gallery,
    page: () => const BarberaGalleryScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.comment,
    page: () => const BarberaCommentScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingService,
    page: () => const BarberaBookingServiceScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.schedule,
    page: () => const BarberaScheduleScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingDetail,
    page: () => const BarberaBookingDetailScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingPayment,
    page: () => const BarberaBookingPaymentScreen(),
  ),
  GetPage<dynamic>(
    name: BarberaRoutes.bookingSuccess,
    page: () => const BarberaBookingSuccessScreen(),
  ),

  // --------------------------------------------------------------------------
  // Belila Routes
  GetPage<dynamic>(
    name: BelilaRoutes.splash,
    page: () => const BelilaSplashScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.onBoarding,
    page: () => const BelilaOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.signIn,
    page: () => const BelilaSignInScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.resetPassword,
    page: () => const BelilaResetPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.resetPasswordOTP,
    page: () => const BelilaResetPasswordOTPScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.newPassword,
    page: () => const BelilaNewPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.signUp,
    page: () => const BelilaSignUpScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.home,
    page: () => const BelilaCustomBottomNavigationBar(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.inbox,
    page: () => const BelilaCustomBottomNavigationBar(initialIndex: 1),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.notification,
    page: () => const BelilaCustomBottomNavigationBar(initialIndex: 2),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.profile,
    page: () => const BelilaCustomBottomNavigationBar(initialIndex: 3),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.product,
    page: () => const BelilaProductScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.photoView,
    page: () => const BelilaPhotoViewScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.photoViewList,
    page: () => const BelilaPhotoViewListScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.productBrowse,
    page: () => const BelilaProductBrowseScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.store,
    page: () => const BelilaStoreScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.archivedInbox,
    page: () => const BelilaArchivedInboxScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.chat,
    page: () => const BelilaChatScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.order,
    page: () => const BelilaOrderScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.inbox,
    page: () => const BelilaInboxScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.notification,
    page: () => const BelilaNotificationScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.profile,
    page: () => const BelilaProfileScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.notPay,
    page: () => const BelilaOrderScreen(initialIndex: 1),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.packaging,
    page: () => const BelilaOrderScreen(initialIndex: 3),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.onDelivery,
    page: () => const BelilaOrderScreen(initialIndex: 4),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.done,
    page: () => const BelilaOrderScreen(initialIndex: 5),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.orderDetail,
    page: () => const BelilaOrderDetailScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.trackDelivery,
    page: () => const BelilaTrackDeliveryScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.setting,
    page: () => const BelilaSettingScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.profileEdit,
    page: () => const BelilaProfileEditScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.changePassword,
    page: () => const BelilaChangePasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.address,
    page: () => const BelilaAddressScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.addressAdd,
    page: () => const BelilaAddressAddScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.addressEdit,
    page: () => const BelilaAddressEditScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.favorite,
    page: () => const BelilaFavoriteScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.cart,
    page: () => const BelilaCartScreen(),
  ),
  GetPage<dynamic>(
    name: BelilaRoutes.checkout,
    page: () => const BelilaCheckoutScreen(),
  ),

  // --------------------------------------------------------------------------
  // Bellcommerce Routes
  GetPage<dynamic>(
    name: BellcommerceRoutes.splash,
    page: () => const BellcommerceSplashScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.onboarding,
    page: () => const BellcommerceOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.signIn,
    page: () => const BellcommerceSignInScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.forgotPassword,
    page: () => const BellcommerceForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.forgotPasswordSuccess,
    page: () => const BellcommerceForgotPasswordSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.signUp,
    page: () => const BellcommerceSignUpScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.home,
    page: () => const BellcommerceBottomNavigationBar(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.browseProduct,
    page: () => const BellcommerceBrowseProductScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.browseCategory,
    page: () => const BellcommerceBrowseCategoryScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.notification,
    page: () => const BellcommerceNotificationScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.feed,
    page: () => const BellcommerceFeedScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.offer,
    page: () => const BellcommerceOfferScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.activity,
    page: () => const BellcommerceActivityScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.search,
    page: () => const BellcommerceSearchScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.product,
    page: () => const BellcommerceProductScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.review,
    page: () => const BellcommerceReviewScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.photoListView,
    page: () => const CustomPhotoListView(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.checkout,
    page: () => const BellcommerceCheckoutScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.addressAdd,
    page: () => const BellcommerceAddressAddScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.addressEdit,
    page: () => const BellcommerceAddressEditScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.paymentMethod,
    page: () => const BellcommercePaymentMethodScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.profileEdit,
    page: () => const BellcommerceProfileEditScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.profileDetail,
    page: () => const BellcommerceProfileDetailScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.address,
    page: () => const BellcommerceAddressScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.order,
    page: () => const BellcommerceOrderScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.orderDetail,
    page: () => const BellcommerceOrderDetailScreen(),
  ),
  GetPage<dynamic>(
    name: BellcommerceRoutes.checkoutPayment,
    page: () => const BellcommerceCheckoutPaymentScreen(),
  ),

  //----------------------------------------------------------------------------
  // Coffiy Routes
  GetPage<dynamic>(
    name: CoffiyRoutes.splash,
    page: () => const CoffiySplashScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.onBoarding,
    page: () => const CoffiyOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.signIn,
    page: () => const CoffiySignInScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.signUp,
    page: () => const CoffiySignUpScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.forgotPassword,
    page: () => const CoffiyForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.otpEmail,
    page: () => const CoffiyOTPEmailScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.home,
    page: () => const CoffiyCustomBottomNavigationBar(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.rewards,
    page: () => const CoffiyCustomBottomNavigationBar(selectedIndex: 1),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.order,
    page: () => const CoffiyCustomBottomNavigationBar(selectedIndex: 2),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.changePassword,
    page: () => const CoffiyChangePasswordScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.coffee,
    page: () => const CoffiyCoffeeScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.cart,
    page: () => const CoffiyCartScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.orderSuccess,
    page: () => const CoffiyOrderSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.trackOrder,
    page: () => const CoffiyTrackOrderScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.chat,
    page: () => const CoffiyChatScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.profile,
    page: () => const CoffiyProfileScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.redeem,
    page: () => const CoffiyReedemScreen(),
  ),
  GetPage<dynamic>(
    name: CoffiyRoutes.setting,
    page: () => const CoffiySettingScreen(),
  ),

  //----------------------------------------------------------------------------
  // Foodiy Routes
  GetPage<dynamic>(
    name: FoodiyRoutes.splash,
    page: () => const FoodiySplashScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.onboarding,
    page: () => const FoodiyOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.signin,
    page: () => const FoodiySignInScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.signinwithemail,
    page: () => const FoodiySignInWithEmailScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.signup,
    page: () => const FoodiySignUpScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.signupaddress,
    page: () => const FoodiySignUpUserAddressScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.forgotpassword,
    page: () => const FoodiyForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.home,
    page: () => const FoodiyBottomNavScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.favorite,
    page: () => const FoodiyBottomNavScreen(initialIndex: 1),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.order,
    page: () => const FoodiyBottomNavScreen(initialIndex: 2),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.profile,
    page: () => const FoodiyBottomNavScreen(initialIndex: 3),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.fooddetail,
    page: () => const FoodiyFoodDetailScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.checkout,
    page: () => const FoodiyCheckoutScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.ordersuccess,
    page: () => const FoodiyOrderSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.payment,
    page: () => const FoodiyPaymentScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.orderdetail,
    page: () => const FoodiyOrderDetailScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.paypal,
    page: () => const FoodiyPayPalPaymentScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.settings,
    page: () => const FoodiySettingScreen(),
  ),
  GetPage<dynamic>(
    name: FoodiyRoutes.changeLanguage,
    page: () => const FoodiyChangeLanguageScreen(),
  ),

  // Furney Routes
  GetPage<dynamic>(
    name: FurneyRoutes.splash,
    page: () => const FurneySplashScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.address,
    page: () => const FurneyAddressScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.addAddress,
    page: () => const FurneyAddAddressScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.addCreditCard,
    page: () => const FurneyAddCreditCard(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.allProduct,
    page: () => const FurneyAllProductScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.category,
    page: () => const FurneyCategoryScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.cart,
    page: () => const FurneyBottomNavigationBarScreen(initialIndex: 2),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.checkout,
    page: () => const FurneyCheckoutScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.checkoutSucceess,
    page: () => const FurneyCheckoutSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.creditCard,
    page: () => const CreditCardScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.discover,
    page: () => const FurneyBottomNavigationBarScreen(initialIndex: 1),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.editProfile,
    page: () => const FurneyEditProfileScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.favorite,
    page: () => const FurneyFavoriteScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.forgotPassword,
    page: () => const FurneyForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.forgotPasswordSuccess,
    page: () => const FurneyForgotPasswordSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.home,
    page: () => const FurneyBottomNavigationBarScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.language,
    page: () => const FurneyLanguageScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.notification,
    page: () => const FurneyNotificationScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.onBoarding,
    page: () => const FurneyOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.order,
    page: () => const FurneyOrderScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.product,
    page: () => const ProductScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.profile,
    page: () => const FurneyBottomNavigationBarScreen(initialIndex: 4),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.search,
    page: () => const FurneyBottomNavigationBarScreen(initialIndex: 3),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.signIn,
    page: () => const FurneySignInScreen(),
  ),
  GetPage<dynamic>(
    name: FurneyRoutes.signUp,
    page: () => const FurneySignUpScreen(),
  ),

  // --------------------------------------------------------------------------
  // Lestate Routes
  GetPage<dynamic>(
    name: LestateRoutes.splash,
    page: () => const LestateSplashScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.onBoarding,
    page: () => const LestateOnBoardingScreen(),
  ),

  GetPage<dynamic>(
    name: LestateRoutes.signIn,
    page: () => const LestateSignInScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.signUp,
    page: () => const LestateSignUpScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.otpPhone,
    page: () => const LestateOTPPhoneScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.home,
    page: () => const LestateCustomBottomNavigationBar(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.saved,
    page: () => const LestateCustomBottomNavigationBar(selectedIndex: 1),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.inbox,
    page: () => const LestateCustomBottomNavigationBar(selectedIndex: 2),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.profile,
    page: () => const LestateCustomBottomNavigationBar(selectedIndex: 3),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.filter,
    page: () => const LestateFilterScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.search,
    page: () => const LestateSearchScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.estate,
    page: () => const LestateEstateScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.summary,
    page: () => const LestateSummaryScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.payment,
    page: () => const LestatePaymentScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.paymentSuccess,
    page: () => const PaymentSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.chat,
    page: () => const LestateChatScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.browseEstate,
    page: () => const LestateBrowseEstateScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.setting,
    page: () => const LestateSettingScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.account,
    page: () => const LestateAccountScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.forgotPassword,
    page: () => const LestateForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.otpEmail,
    page: () => const LestateOTPEmailScreen(),
  ),
  GetPage<dynamic>(
    name: LestateRoutes.changePassword,
    page: () => const LestateChangePasswordScreen(),
  ),

  // --------------------------------------------------------------------------
  // Movlix Routes
  GetPage<dynamic>(
    name: MovlixRoutes.splash,
    page: () => const MovlixSplashScreen(),
  ),
  GetPage<dynamic>(
    name: MovlixRoutes.home,
    page: () => const MovlixCustomBottomNavigationBar(),
  ),
  GetPage<dynamic>(
    name: MovlixRoutes.genre,
    page: () => const MovlixGenreScreen(),
  ),
  GetPage<dynamic>(
    name: MovlixRoutes.search,
    page: () => const MovlixSearchScreen(),
  ),
  GetPage<dynamic>(
    name: MovlixRoutes.movie,
    page: () => const MovlixMovieScreen(),
  ),
  GetPage<dynamic>(
    name: MovlixRoutes.videoPlayer,
    page: () => const MovlixVideoPlayerScreen(),
  ),
  GetPage<dynamic>(
    name: MovlixRoutes.browse,
    page: () => const MovlixBrowseMovieScreen(),
  ),

  // On Boarding Routes
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding1,
    page: () => const OnBoarding1Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding2,
    page: () => const OnBoarding2Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding3,
    page: () => const OnBoarding3Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding4,
    page: () => const OnBoarding4Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding5,
    page: () => const OnBoarding5Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding6,
    page: () => const OnBoarding6Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding7,
    page: () => const OnBoarding7Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding8,
    page: () => const OnBoarding8Screen(),
  ),
  GetPage<dynamic>(
    name: OnBoardingRoutes.onboarding9,
    page: () => const OnBoarding9Screen(),
  ),

  // Shuppy Routes
  GetPage<dynamic>(
    name: ShuppyRoutes.splash,
    page: () => const ShuppySplashScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.address,
    page: () => const ShuppyAddressScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.browseProduct,
    page: () => const ShuppyBrowseProductScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.cart,
    page: () => const ShuppyBottomNavigationScreen(initialIndex: 1),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.category,
    page: () => const ShuppyCategoryScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.checkout,
    page: () => const ShuppyCheckoutScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.checkoutSuccess,
    page: () => const ShuppyCheckoutSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.editProfile,
    page: () => const ShuppyEditProfileScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.favorite,
    page: () => const ShuppyFavoriteScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.forgotPassword,
    page: () => const ShuppyForgotPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.home,
    page: () => const ShuppyBottomNavigationScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.language,
    page: () => const ShuppyLanguageScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.notification,
    page: () => const ShuppyNotificationScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.onBoarding,
    page: () => const ShuppyOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.orderHistory,
    page: () => const ShuppyOrderHistoryScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.orderDetail,
    page: () => const ShuppyOrderDetailScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.payment,
    page: () => const ShuppyPaymentScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.paymentSuccess,
    page: () => const ShuppyPaymentSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.product,
    page: () => const ShuppyProductScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.profile,
    page: () => const ShuppyBottomNavigationScreen(initialIndex: 3),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.signIn,
    page: () => const ShuppySignInScreen(),
  ),
  GetPage<dynamic>(
    name: ShuppyRoutes.signUp,
    page: () => const ShuppySignUpScreen(),
  ),

  // Treshop Routes
  GetPage<dynamic>(
    name: TreshopRoutes.splash,
    page: () => const TreshopSplashScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.onBoarding,
    page: () => const TreshopOnBoardingScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.signIn,
    page: () => const TreshopSignInScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.signUp,
    page: () => const TreshopSignUpScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.home,
    page: () => const TreshopBottomNavigationBarScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.search,
    page: () => const TreshopSearchScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.shop,
    page: () => const TreshopBottomNavigationBarScreen(initialIndex: 2),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.allProduct,
    page: () => const TreshopAllProductScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.favorite,
    page: () => const TreshopFavoriteScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.product,
    page: () => const TreshopProductScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.cart,
    page: () => const TreshopBottomNavigationBarScreen(initialIndex: 1),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.selectCoupon,
    page: () => const TreshopSelectCouponScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.checkout,
    page: () => const TreshopCheckoutScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.payment,
    page: () => const TreshopPaymentScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.shipping,
    page: () => const TreshopShippingScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.checkoutSuccess,
    page: () => const TreshopCheckoutSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.profile,
    page: () => const TreshopBottomNavigationBarScreen(initialIndex: 3),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.order,
    page: () => const TreshopOrderScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.orderDetail,
    page: () => const TreshopOrderDetailScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.trackingOrder,
    page: () => const TreshopTrackingOrderScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.profileDetail,
    page: () => const TreshopProfileDetailScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.coupon,
    page: () => const TreshopCouponScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.wallet,
    page: () => const TreshopWalletScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.chat,
    page: () => const TreshopChatScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.category,
    page: () => const TreshopCategoryScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.language,
    page: () => const TreshopLanguageScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.resetPassword,
    page: () => const TreshopResetPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.resetPasswordSuccess,
    page: () => const TreshopResetPasswordSuccessScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.newPassword,
    page: () => const TreshopNewPasswordScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.profileEdit,
    page: () => const TreshopProfileEditScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.address,
    page: () => const TreshopAddressScreen(),
  ),
  GetPage<dynamic>(
    name: TreshopRoutes.addressAdd,
    page: () => const TreshopAddressAddScreen(),
  ),
];
