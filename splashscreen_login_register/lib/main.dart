import 'package:flutter/material.dart';
import 'package:login_register/pages/Drawwer.dart';

import 'package:login_register/pages/checkout_page.dart';
import 'package:login_register/pages/checkout_success_page.dart';
import 'package:login_register/pages/dashboard.dart';
import 'package:login_register/pages/detail_chat.dart';
import 'package:login_register/pages/edit_profile_page.dart';
import 'package:login_register/pages/pages.dart';
import 'package:login_register/pages/splash_page.dart';
import 'package:login_register/providers/auth_provider.dart';
import 'package:login_register/providers/product_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:login_register/widget/cart2_card.dart';
import 'package:login_register/widget/cart2_card.dart';
import 'package:login_register/widget/cart3_card%20.dart';
import 'package:login_register/widget/cart_page.dart';
import 'package:login_register/widget/checkoutcard_card.dart';

import 'package:login_register/widget/product_page.dart';
import 'package:login_register/widget/whislist_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Productprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: ColorPalette.brownColor,
          primaryColor: primaryColor,
          canvasColor: Colors.transparent,
        ),
        routes: {
          '/': (context) => SplashPage(),
          '/welcome-pages': (context) => WellcomePage(),
          '/dashboard': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/Drawwer': (context) => DrawerScreen(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart2': (context) => Cart2Card(),
          '/cart3': (context) => Cart3Card(),
          'whislist': (context) => WhislistCard(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkoutcard': (context) => CheckoutCard(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
