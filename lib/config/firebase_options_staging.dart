// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_staging.dart';
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
    apiKey: 'AIzaSyAYJWGDy1i7comZk48ool9pPbD9Cic0Vp0',
    appId: '1:398763627338:web:8ba577b5b6d458f140a7b3',
    messagingSenderId: '398763627338',
    projectId: 'flutter-course-staging',
    authDomain: 'flutter-course-staging.firebaseapp.com',
    storageBucket: 'flutter-course-staging.appspot.com',
    measurementId: 'G-TC0T05CVD0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBreAhyULC1lxjIOZ8vU9nINVE5MyJ-GgM',
    appId: '1:398763627338:android:ef7e25da9358b33040a7b3',
    messagingSenderId: '398763627338',
    projectId: 'flutter-course-staging',
    storageBucket: 'flutter-course-staging.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXaFbBclh57JMYXCEljzHpDRPntk_2KzM',
    appId: '1:398763627338:ios:e07870dfef8fc44640a7b3',
    messagingSenderId: '398763627338',
    projectId: 'flutter-course-staging',
    storageBucket: 'flutter-course-staging.appspot.com',
    iosBundleId: 'com.cotr.flutterCourse',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXaFbBclh57JMYXCEljzHpDRPntk_2KzM',
    appId: '1:398763627338:ios:3f5ba8591707181c40a7b3',
    messagingSenderId: '398763627338',
    projectId: 'flutter-course-staging',
    storageBucket: 'flutter-course-staging.appspot.com',
    iosBundleId: 'com.cotr.flutterCourse.RunnerTests',
  );
}