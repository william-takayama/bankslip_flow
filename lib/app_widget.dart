import 'package:flutter/material.dart';

import 'router.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bankslip Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      onGenerateRoute: AppRouter.generateRoutes,
    );
  }
}
