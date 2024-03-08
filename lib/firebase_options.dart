// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBZiwifhCShjvxFenj8jltxC2YEYHitOJM',
    appId: '1:62301347761:web:1721f04ee4181558102790',
    messagingSenderId: '62301347761',
    projectId: 'ulearning-app-9fecf',
    authDomain: 'ulearning-app-9fecf.firebaseapp.com',
    storageBucket: 'ulearning-app-9fecf.appspot.com',
    measurementId: 'G-T8XCJBYPWJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARN154Dwbr0NfImvklAz8IaQkLG0ihuCI',
    appId: '1:62301347761:android:301cd9bff94bc7a4102790',
    messagingSenderId: '62301347761',
    projectId: 'ulearning-app-9fecf',
    storageBucket: 'ulearning-app-9fecf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDEJb0PcSo8AuxMkaqA6t45CDUceRYP2W4',
    appId: '1:62301347761:ios:a6879943f5821bab102790',
    messagingSenderId: '62301347761',
    projectId: 'ulearning-app-9fecf',
    storageBucket: 'ulearning-app-9fecf.appspot.com',
    iosBundleId: 'com.example.flutterUlearning',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDEJb0PcSo8AuxMkaqA6t45CDUceRYP2W4',
    appId: '1:62301347761:ios:dea4574e3410173f102790',
    messagingSenderId: '62301347761',
    projectId: 'ulearning-app-9fecf',
    storageBucket: 'ulearning-app-9fecf.appspot.com',
    iosBundleId: 'com.example.flutterUlearning.RunnerTests',
  );
}