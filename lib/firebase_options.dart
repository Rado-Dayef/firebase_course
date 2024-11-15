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
    apiKey: 'AIzaSyC1DcX68kvCt7bhBTabbX_5hXSIl721vrE',
    appId: '1:678494646290:web:b308d842d4fa2109a3a8cb',
    messagingSenderId: '678494646290',
    projectId: 'fir-course-5e688',
    authDomain: 'fir-course-5e688.firebaseapp.com',
    storageBucket: 'fir-course-5e688.firebasestorage.app',
    measurementId: 'G-125KE5J61E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOy1d32IwHny4AaHNkLhLAl05-yAqvCT8',
    appId: '1:678494646290:android:b525357f17d71773a3a8cb',
    messagingSenderId: '678494646290',
    projectId: 'fir-course-5e688',
    storageBucket: 'fir-course-5e688.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvN_nb0aw9zWjBpi2GG78sGd07Vb1-daQ',
    appId: '1:678494646290:ios:bdcd56aca4da46ffa3a8cb',
    messagingSenderId: '678494646290',
    projectId: 'fir-course-5e688',
    storageBucket: 'fir-course-5e688.firebasestorage.app',
    iosBundleId: 'com.example.firebaseCourse',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvN_nb0aw9zWjBpi2GG78sGd07Vb1-daQ',
    appId: '1:678494646290:ios:bdcd56aca4da46ffa3a8cb',
    messagingSenderId: '678494646290',
    projectId: 'fir-course-5e688',
    storageBucket: 'fir-course-5e688.firebasestorage.app',
    iosBundleId: 'com.example.firebaseCourse',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC1DcX68kvCt7bhBTabbX_5hXSIl721vrE',
    appId: '1:678494646290:web:2dbdae5b4ea3818da3a8cb',
    messagingSenderId: '678494646290',
    projectId: 'fir-course-5e688',
    authDomain: 'fir-course-5e688.firebaseapp.com',
    storageBucket: 'fir-course-5e688.firebasestorage.app',
    measurementId: 'G-45N8LGWVE6',
  );
}