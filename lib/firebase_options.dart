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
    apiKey: 'AIzaSyAzWkSf89cgMwZX7LA_tCKQk3tL5szq26E',
    appId: '1:830584030905:web:15739e76d7bada537e3d68',
    messagingSenderId: '830584030905',
    projectId: 'ecommercestore-1e851',
    authDomain: 'ecommercestore-1e851.firebaseapp.com',
    storageBucket: 'ecommercestore-1e851.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDXvzRzcwcJkD7RM7f2EG4tKspAZ_pIZ4',
    appId: '1:830584030905:android:9c2473300957f16d7e3d68',
    messagingSenderId: '830584030905',
    projectId: 'ecommercestore-1e851',
    storageBucket: 'ecommercestore-1e851.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArUbZ-qZx8702ZjwMqf1VVatzXt7BawIQ',
    appId: '1:830584030905:ios:3aca5a8cf1d7341e7e3d68',
    messagingSenderId: '830584030905',
    projectId: 'ecommercestore-1e851',
    storageBucket: 'ecommercestore-1e851.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArUbZ-qZx8702ZjwMqf1VVatzXt7BawIQ',
    appId: '1:830584030905:ios:3aca5a8cf1d7341e7e3d68',
    messagingSenderId: '830584030905',
    projectId: 'ecommercestore-1e851',
    storageBucket: 'ecommercestore-1e851.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAzWkSf89cgMwZX7LA_tCKQk3tL5szq26E',
    appId: '1:830584030905:web:b0473e7d10d299a17e3d68',
    messagingSenderId: '830584030905',
    projectId: 'ecommercestore-1e851',
    authDomain: 'ecommercestore-1e851.firebaseapp.com',
    storageBucket: 'ecommercestore-1e851.appspot.com',
  );

}