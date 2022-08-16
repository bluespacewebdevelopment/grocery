import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'Modals/colorModal/color.dart';
import 'Screens/Exactcatproductshow/view/Exactcatrelatedallproductshow.dart';
import 'Screens/HomePage/view/Homepage.dart';
import 'Screens/Login/view/Login.dart';
import 'Screens/Otp/view/Otp.dart';
import 'Screens/Signup/view/askSignUp.dart';
import 'Screens/Singleproduct/view/Singleproduct.dart';
import 'Screens/ViewOrderSubscription/view/viewSubscriptionOrder.dart';
import 'Screens/ViewSubscription/view/ViewSingleSubscription.dart';
import 'Screens/ViewSubscription/view/viewAllSubscription.dart';
import 'Screens/ZoomProduct/view/zoomProduct.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: ColorPallete().color,
      statusBarColor: ColorPallete().color,
      systemNavigationBarDividerColor: ColorPallete().color));
  runApp(GetMaterialApp(getPages: [
    GetPage(
        name: "/signUp",
        page: () => SignUp(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 400)),
    GetPage(
        name: "/logIn",
        page: () => Login(),
        transition: Transition.downToUp,
        transitionDuration: Duration(milliseconds: 400)),
    GetPage(
        name: "/OTP",
        page: () => Otps(),
        transition: Transition.downToUp,
        transitionDuration: Duration(milliseconds: 400)),
    GetPage(
        name: "/MyHomepage",
        page: () => Homepage(),
        transition: Transition.rightToLeft,
        transitionDuration: Duration(milliseconds: 400)),
    GetPage(
        name: "/Exactcatallproductshow",
        page: () => CatRelatedAllProductShow(),
        transition: Transition.downToUp,
        transitionDuration: Duration(milliseconds: 400)),
    GetPage(
        name: "/SingleProduct",
        page: () => SingleProduct(),
        transition: Transition.upToDown,
        transitionDuration: Duration(milliseconds: 500)),
    GetPage(
        name: "/ZoomProduct",
        page: () => ZoomProduct(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500)),
    GetPage(
        name: "/viewAllSubscription",
        page: () => ViewAllSubscription(),
        transition: Transition.downToUp,
        transitionDuration: Duration(milliseconds: 500)),
    GetPage(
        name: "/viewSingleSubscription",
        page: () => ViewSingleSubscription(),
        transition: Transition.upToDown,
        transitionDuration: Duration(milliseconds: 500)),
    GetPage(
        name: "/viewSubscriptionOrder",
        page: () => ViewSubscriptionOrder(),
        transition: Transition.downToUp,
        transitionDuration: Duration(milliseconds: 500)),
  ], debugShowCheckedModeBanner: false, title: "Grocery", home: SignUp()));
}
