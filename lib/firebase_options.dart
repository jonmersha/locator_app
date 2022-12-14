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
    apiKey: 'AIzaSyAm2VdeDbY5U8R6U0RrPvxiQ4wUM1yzGHU',
    appId: '1:453736336853:web:105aa2c0d96800c31fc15c',
    messagingSenderId: '453736336853',
    projectId: 'puvlic',
    authDomain: 'puvlic.firebaseapp.com',
    storageBucket: 'puvlic.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVfruC4sfFFXyWysSPlq7IMfpQ0gQQnow',
    appId: '1:453736336853:android:23ba4cda8940b9b81fc15c',
    messagingSenderId: '453736336853',
    projectId: 'puvlic',
    storageBucket: 'puvlic.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxF66rz0Uy6s4cQwA2UbjYs1cJYKmPR5k',
    appId: '1:453736336853:ios:a8642e8a7fe3bcdc1fc15c',
    messagingSenderId: '453736336853',
    projectId: 'puvlic',
    storageBucket: 'puvlic.appspot.com',
    iosClientId: '453736336853-nb6rkk9slp27mc72ks9eh7f7vemq4t4i.apps.googleusercontent.com',
    iosBundleId: 'com.locator.besheger.locator',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxF66rz0Uy6s4cQwA2UbjYs1cJYKmPR5k',
    appId: '1:453736336853:ios:a8642e8a7fe3bcdc1fc15c',
    messagingSenderId: '453736336853',
    projectId: 'puvlic',
    storageBucket: 'puvlic.appspot.com',
    iosClientId: '453736336853-nb6rkk9slp27mc72ks9eh7f7vemq4t4i.apps.googleusercontent.com',
    iosBundleId: 'com.locator.besheger.locator',
  );
}
