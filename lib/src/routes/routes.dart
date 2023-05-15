import 'package:flutter/material.dart';

import '../features/presentation/welcome_page/view/welcome_page.dart';
import '../features/presentation/login_page/View/login_page.dart';
import '../features/presentation/signup_page/View/sign_up_page.dart';
import '../features/presentation/forgotPassword_page/View/forgot_password.dart';
import '../features/presentation/tabs/tabs_page.dart';
import '../features/presentation/search_page/view/search_view.dart';
import '../features/presentation/filter_page/view/filter_page.dart';
import '../features/presentation/collections_page/view/collections_view.dart';
import '../features/presentation/collection_detail_page/view/collection_detail_page.dart';
import '../features/presentation/place_detail_page/view/place_detail_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => const WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'signup': (BuildContext context) => const SignUpPage(),
  'forgot-password': (BuildContext context) => const ForgotPasswordPage(),
  'tabs': (BuildContext context) => const TabsPage(),
  'search': (BuildContext context) => const SearchPage(),
  'filter': (BuildContext context) => const FilterPage(),
  'collections': (BuildContext context) => const CollectionsPage(),
  'collection-detail': (BuildContext context) => const CollectionDetailPage(),
  'place-detail': (BuildContext context) => const PlaceDetailPage(),
};
