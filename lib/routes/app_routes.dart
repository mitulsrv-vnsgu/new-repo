import 'package:flutter/material.dart';
import 'package:mitul_s_application38/presentation/dr_list_screen/dr_list_screen.dart';
import 'package:mitul_s_application38/presentation/dr_details_screen/dr_details_screen.dart';
import 'package:mitul_s_application38/presentation/book_an_appointment_screen/book_an_appointment_screen.dart';
import 'package:mitul_s_application38/presentation/chat_screen/chat_screen.dart';
import 'package:mitul_s_application38/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:mitul_s_application38/presentation/drug_details_screen/drug_details_screen.dart';
import 'package:mitul_s_application38/presentation/article_screen/article_screen.dart';
import 'package:mitul_s_application38/presentation/cart_screen/cart_screen.dart';
import 'package:mitul_s_application38/presentation/ambulance_screen/ambulance_screen.dart';
import 'package:mitul_s_application38/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String drListScreen = '/dr_list_screen';

  static const String drDetailsScreen = '/dr_details_screen';

  static const String bookAnAppointmentScreen = '/book_an_appointment_screen';

  static const String chatScreen = '/chat_screen';

  static const String settignsPage = '/settigns_page';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugDetailsScreen = '/drug_details_screen';

  static const String articleScreen = '/article_screen';

  static const String cartScreen = '/cart_screen';

  static const String ambulanceScreen = '/ambulance_screen';

  static const String schedulePage = '/schedule_page';

  static const String messagePage = '/message_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    drListScreen: (context) => DrListScreen(),
    drDetailsScreen: (context) => DrDetailsScreen(),
    bookAnAppointmentScreen: (context) => BookAnAppointmentScreen(),
    chatScreen: (context) => ChatScreen(),
    pharmacyScreen: (context) => PharmacyScreen(),
    drugDetailsScreen: (context) => DrugDetailsScreen(),
    articleScreen: (context) => ArticleScreen(),
    cartScreen: (context) => CartScreen(),
    ambulanceScreen: (context) => AmbulanceScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
