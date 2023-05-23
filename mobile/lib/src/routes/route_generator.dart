import 'routes_names.dart';
import '../views/pages/add_address/add_new_address_page.dart';
import '../views/pages/add_card/add_card_page.dart';
import '../views/pages/cart/cart_page.dart';
import '../views/pages/contact/contact_page.dart';
import '../views/pages/delivery_address/delivery_address_page.dart';
import '../views/pages/help/help_&_faqs_page.dart';
import '../views/pages/login/login_page.dart';
import '../views/pages/onboarding/onboarding_page.dart';
import '../views/pages/orders/orders_page.dart';
import '../views/pages/payment/payment_page.dart';
import '../views/pages/payment_methods/payment_methods_page.dart';
import '../views/pages/phone_registration/phone_registration_page.dart';
import '../views/pages/profile/profile_page.dart';
import '../views/pages/resset_password/resset_password_page.dart';
import '../views/pages/settings/settings_page.dart';
import '../views/pages/side_menu.dart';
import '../views/pages/signup/signup_page.dart';
import '../views/pages/welcome/welcome_page.dart';
import '../screens/orders.dart';
import '../views/pages/search_result/search_result_page.dart';

import '../views/pages/tickets_detail/ticket_detail.dart';
//OLD ROUTES

import '../screens/reviews.dart';
import '../screens/cart.dart';
import '../screens/checkout.dart';
import '../screens/debug.dart';
import '../screens/delivery_addresses.dart';
import '../screens/delivery_pickup.dart';
import '../screens/forget_password.dart';
import '../screens/order_success.dart';
import '../screens/payment_methods.dart';
import '../screens/paypal_payment.dart';
import '../screens/tracking.dart';
import '../screens/help.dart';
import '../screens/languages.dart';
import '../screens/brand.dart';
import '../screens/categories.dart';
import '../screens/category.dart';
import '../models/route_argument.dart';
import '../screens/pages.dart';
import '../screens/product.dart';
import '../screens/settings.dart';
import '../screens/signin.dart';
import '../screens/signup.dart';
import '../screens/splash_screen.dart';
import '../screens/brands.dart';
import 'package:flutter/material.dart';
import '../screens/razorpay_payment.dart';
import '../views/pages/products_detail/products_detail_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Debug':
        return MaterialPageRoute(
            builder: (_) => DebugWidget(routeArgument: args as RouteArgument));
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/MobileVerification':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/MobileVerification2':
        return MaterialPageRoute(builder: (_) => SignUpWidget());
      case '/Login':
        return MaterialPageRoute(builder: (_) => SignInWidget());
      case '/ForgetPassword':
        return MaterialPageRoute(builder: (_) => ForgetPasswordWidget());
      case '/Pages':
        return MaterialPageRoute(builder: (_) => PagesWidget(currentTab: args));

      /*case '/Details':
        return MaterialPageRoute(builder: (_) => DetailsWidget(routeArgument: args as RouteArgument));
      case '/Menu':
        return MaterialPageRoute(builder: (_) => MenuWidget(routeArgument: args as RouteArgument));
      */
      case '/Product':
        return MaterialPageRoute(
            builder: (_) =>
                ProductWidget(routeArgument: args as RouteArgument));
      case '/Brand':
        return MaterialPageRoute(
            builder: (_) => BrandWidget(routeArgument: args as RouteArgument));
      case '/Brands':
        return MaterialPageRoute(builder: (_) => BrandsWidget());
      case '/Category':
        return MaterialPageRoute(
            builder: (_) =>
                CategoryWidget(routeArgument: args as RouteArgument));
      case '/Categories':
        return MaterialPageRoute(builder: (_) => CategoriesWidget());

      case '/Cart':
        return MaterialPageRoute(
            builder: (_) => CartWidget(routeArgument: args as RouteArgument));

      case '/DeliveryPickup':
        return MaterialPageRoute(
            builder: (_) =>
                DeliveryPickupWidget(routeArgument: args as RouteArgument));

      case '/Tracking':
        return MaterialPageRoute(
            builder: (_) =>
                TrackingWidget(routeArgument: args as RouteArgument));
      case '/Reviews':
        return MaterialPageRoute(
            builder: (_) =>
                ReviewsWidget(routeArgument: args as RouteArgument));
      case '/PaymentMethod':
        return MaterialPageRoute(builder: (_) => PaymentMethodsWidget());
      case '/DeliveryAddresses':
        return MaterialPageRoute(builder: (_) => DeliveryAddressesWidget());

      case '/Checkout':
        return MaterialPageRoute(builder: (_) => CheckoutWidget());

      case '/CashOnDelivery':
        return MaterialPageRoute(
            builder: (_) => OrderSuccessWidget(
                routeArgument: RouteArgument(param: 'Cash on Delivery')));

      case '/PayOnPickup':
        return MaterialPageRoute(
            builder: (_) => OrderSuccessWidget(
                routeArgument: RouteArgument(param: 'Pay on Pickup')));
      case '/PayPal':
        return MaterialPageRoute(
            builder: (_) =>
                PayPalPaymentWidget(routeArgument: args as RouteArgument));
      case '/RazorPay':
        return MaterialPageRoute(
            builder: (_) =>
                RazorPayPaymentWidget(routeArgument: args as RouteArgument));
      case '/OrderSuccess':
        return MaterialPageRoute(
            builder: (_) =>
                OrderSuccessWidget(routeArgument: args as RouteArgument));
      case '/Languages':
        return MaterialPageRoute(builder: (_) => LanguagesWidget());
      case '/Help':
        return MaterialPageRoute(builder: (_) => HelpWidget());
      case '/Settings':
        return MaterialPageRoute(builder: (_) => SettingsWidget());

//

      case RouteNames.welcomPage:
        return MaterialPageRoute(builder: (_) => WelcomePage());

      case RouteNames.onBoardingPage:
        return MaterialPageRoute(builder: (_) => OnBoardingPage());

      case RouteNames.signupPage:
        return MaterialPageRoute(builder: (_) => SignUpPage());

      case RouteNames.loginPage:
        return MaterialPageRoute(builder: (_) => LoginPage());

      case RouteNames.resetPasswordPage:
        return MaterialPageRoute(builder: (_) => ResetPasswordPage());

      case RouteNames.phoneRegistrationPage:
        return MaterialPageRoute(builder: (_) => PhoneRegistrationPage());

      case RouteNames.searchResultPage:
        return MaterialPageRoute(
          builder: (_) =>
              SearchResultPage(routeArgument: args as RouteArgument),
        );

      case RouteNames.profilePage:
        return MaterialPageRoute(builder: (_) => ProfilePage());

      case RouteNames.ordersPage:
        return MaterialPageRoute(
            builder: (_) => TrakingOrderPage(
                  routeArgument: args as RouteArgument,
                ));

      case RouteNames.ordersWidget:
        return MaterialPageRoute(builder: (_) => OrdersWidget());

      case RouteNames.deliveryAddressPage:
        return MaterialPageRoute(builder: (_) => DeliveryAddressPage());

      case RouteNames.contactUsPage:
        return MaterialPageRoute(builder: (_) => ContactPage());

      case RouteNames.paymentMethodsPage:
        return MaterialPageRoute(builder: (_) => PaymentMethodsPage());

      case RouteNames.settingsPage:
        return MaterialPageRoute(builder: (_) => SettingsPage());

      case RouteNames.helpsFAQsPage:
        return MaterialPageRoute(builder: (_) => HelpFAQPage());

      case RouteNames.productsDetailPage:
        return MaterialPageRoute(
            builder: (_) =>
                ProductsDetailPage(routeArgument: args as RouteArgument));

      case RouteNames.menuNavigationPage:
        return MaterialPageRoute(builder: (_) => SideMenu());

      case RouteNames.addDeliveryAddress:
        return MaterialPageRoute(builder: (_) => AddNewAddressPage());

      case RouteNames.cartPage:
        return MaterialPageRoute(builder: (_) => CartPage());

      case RouteNames.paymentPage:
        return MaterialPageRoute(builder: (_) => PaymentPage());

      case RouteNames.addCardPage:
        return MaterialPageRoute(builder: (_) => AddCardPage());

      case RouteNames.ticketsDetailPage:
        return MaterialPageRoute(
            builder: (_) =>
                TicketsDetailPage(routeArgument: args as RouteArgument));

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => SideMenu());
    }
  }
}
