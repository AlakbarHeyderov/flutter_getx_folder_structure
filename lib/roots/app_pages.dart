import 'package:folder_structure/UI/home/home_controller.dart';
import 'package:get/get.dart';

import '../UI/login/login.dart';
import '../blinding/home_bilding.dart';

import 'app_routs.dart';

final _binding = HomeBinding();

class AppPages {
  static final init = GetPage(
    name: AppRoutes.LOGIN,
    page: () => LoginView(),
    binding: _binding,
  );
  static final home = GetPage(
    name: AppRoutes.HOME,
    page: () => HomeView(),
    binding: _binding,
  );

  static final List<GetPage> pages = [
    init,
  ];
}
