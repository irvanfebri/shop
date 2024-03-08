import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning/common/routes/names.dart';
import 'package:flutter_ulearning/global.dart';
import 'package:flutter_ulearning/pages/application/application_page.dart';
import 'package:flutter_ulearning/pages/application/bloc/app_blocs.dart';
import 'package:flutter_ulearning/pages/register/bloc/register_blocs.dart';
import 'package:flutter_ulearning/pages/register/register.dart';
import 'package:flutter_ulearning/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:flutter_ulearning/pages/sign_in/sign_in.dart';
import 'package:flutter_ulearning/pages/welcome/bloc/welcome_blocs.dart';
import 'package:flutter_ulearning/pages/welcome/welcome.dart';

class AppPages {
  static List<PageEntity> routes() {
    return [
      PageEntity(
          route: AppRoutes.INITIAL,
          page: const Welcome(),
          bloc: BlocProvider(
            create: (_) => WelcomeBloc(),
          )),
      PageEntity(
          route: AppRoutes.SIGN_IN,
          page: const SignIn(),
          bloc: BlocProvider(
            create: (_) => SignInBloc(),
          )),
      PageEntity(
          route: AppRoutes.REGISTER,
          page: const Register(),
          bloc: BlocProvider(
            create: (_) => RegisterBlocs(),
          )),
      PageEntity(
          route: AppRoutes.APPLICATION,
          page: const ApplicationPage(),
          bloc: BlocProvider(
            create: (_) => AppBlocs(),
          )),
    ];
  }

  //return all the block provirders
  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    for (var bloc in routes()) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }

//a modal that covers entire screen as we click on navigator object
  static MaterialPageRoute GenerateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      //check for route name matching when navigator getrs trigered
      var result = routes().where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        if (result.first.route == AppRoutes.INITIAL && deviceFirstOpen) {
          bool isLoggedin = Global.storageService.getIsLoggedIn();
          if (isLoggedin) {
            return MaterialPageRoute(
                builder: (_) => const ApplicationPage(), settings: settings);
          }
          return MaterialPageRoute(
              builder: (_) => SignIn(), settings: settings);
        }
        // print("valid route name ${settings.name}");
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }

    print("invalid route name ${settings.name}");
    return MaterialPageRoute(
        builder: (_) => const SignIn(), settings: settings);
  }
}

//unifi BlocProvider and routes and pages
class PageEntity {
  String? route;
  Widget page;
  dynamic bloc;

  PageEntity({
    required this.route,
    required this.page,
    this.bloc,
  });
}
