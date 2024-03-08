import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ulearning/pages/register/bloc/register_blocs.dart';
import 'package:flutter_ulearning/pages/sign_in/bloc/sign_in_blocs.dart';
import 'package:flutter_ulearning/pages/welcome/bloc/welcome_blocs.dart';

class AppBlocProviders {
  static get allBlockProviders => [
        BlocProvider(
          lazy: false,
          create: (context) => WelcomeBloc(),
        ),
        // BlocProvider(
        //   lazy: false,
        //   create: (context) => AppBlocs(),
        // ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterBlocs(),
        ),
      ];
}
