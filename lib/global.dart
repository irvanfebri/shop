import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_ulearning/firebase_options.dart';

import 'common/service/storage_Service.dart';

class Global {
  static late StorageService storageService;
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Bloc.observer = MyGlobalObserver();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    storageService = await StorageService().init();
  }
}
