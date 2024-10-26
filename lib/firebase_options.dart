// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAByNLdVDt5cZ17pYHL1M-GNiVXzjHeMkQ',
    appId: '1:391575867173:web:9c963307405ff580ce94cc',
    messagingSenderId: '391575867173',
    projectId: 'moviles1-60841',
    authDomain: 'moviles1-60841.firebaseapp.com',
    storageBucket: 'moviles1-60841.appspot.com',
    measurementId: 'G-1XEFNMLSQ8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCmitkIWdGl5QnWnKYDsrG9nD_KjHyE9qY',
    appId: '1:391575867173:android:8bdd51f9938a2bb4ce94cc',
    messagingSenderId: '391575867173',
    projectId: 'moviles1-60841',
    storageBucket: 'moviles1-60841.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBe2h8gHGsKbV_06Zs-KYhkQBuyzVXZyUY',
    appId: '1:391575867173:ios:4159396dc7bb9705ce94cc',
    messagingSenderId: '391575867173',
    projectId: 'moviles1-60841',
    storageBucket: 'moviles1-60841.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBe2h8gHGsKbV_06Zs-KYhkQBuyzVXZyUY',
    appId: '1:391575867173:ios:4159396dc7bb9705ce94cc',
    messagingSenderId: '391575867173',
    projectId: 'moviles1-60841',
    storageBucket: 'moviles1-60841.appspot.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAByNLdVDt5cZ17pYHL1M-GNiVXzjHeMkQ',
    appId: '1:391575867173:web:6a1c0799eff4acc6ce94cc',
    messagingSenderId: '391575867173',
    projectId: 'moviles1-60841',
    authDomain: 'moviles1-60841.firebaseapp.com',
    storageBucket: 'moviles1-60841.appspot.com',
    measurementId: 'G-QKHRHKP1W2',
  );

}