import 'package:mitul_s_application38/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:mitul_s_application38/presentation/pharmacy_screen/binding/pharmacy_binding.dart';
import 'package:mitul_s_application38/presentation/drug_details_screen/drug_details_screen.dart';
import 'package:mitul_s_application38/presentation/drug_details_screen/binding/drug_details_binding.dart';
import 'package:mitul_s_application38/presentation/article_screen/article_screen.dart';
import 'package:mitul_s_application38/presentation/article_screen/binding/article_binding.dart';
import 'package:mitul_s_application38/presentation/cart_screen/cart_screen.dart';
import 'package:mitul_s_application38/presentation/cart_screen/binding/cart_binding.dart';
import 'package:mitul_s_application38/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mitul_s_application38/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String settignsPage = '/settigns_page';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugDetailsScreen = '/drug_details_screen';

  static const String articleScreen = '/article_screen';

  static const String cartScreen = '/cart_screen';

  static const String schedulePage = '/schedule_page';

  static const String messagePage = '/message_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: pharmacyScreen,
      page: () => PharmacyScreen(),
      bindings: [
        PharmacyBinding(),
      ],
    ),
    GetPage(
      name: drugDetailsScreen,
      page: () => DrugDetailsScreen(),
      bindings: [
        DrugDetailsBinding(),
      ],
    ),
    GetPage(
      name: articleScreen,
      page: () => ArticleScreen(),
      bindings: [
        ArticleBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => ArticleScreen(),
      bindings: [
        ArticleBinding(),
      ],
    )
  ];
}
