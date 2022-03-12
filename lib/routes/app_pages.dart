import 'package:flutter/cupertino.dart';
import 'package:pippip_user_app/pages/terms/terms_view.dart';
import 'package:pippip_user_app/routes/app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> getPages(BuildContext context) {
    return {
      AppRoutes.TERMS: (context) => TermsScreen(), 
    };
  }
}
