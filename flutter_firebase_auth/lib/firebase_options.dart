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
    apiKey: 'AIzaSyBAat56gqL0u8wenOTR6YKOgrmzOedt2UI',
    appId: '1:81126893407:web:48079849cd1e5a548878ea',
    messagingSenderId: '81126893407',
    projectId: 'fir-auth-1aa4b',
    authDomain: 'fir-auth-1aa4b.firebaseapp.com',
    storageBucket: 'fir-auth-1aa4b.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYBD3PsFERydHLTu6pWm1FC-rZ73q2N2U',
    appId: '1:81126893407:android:e0841ee2091ea07e8878ea',
    messagingSenderId: '81126893407',
    projectId: 'fir-auth-1aa4b',
    storageBucket: 'fir-auth-1aa4b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3NE2BWxMNJth8EG8QNILvaeJ2bvWaq_U',
    appId: '1:81126893407:ios:8b07574e012edbd38878ea',
    messagingSenderId: '81126893407',
    projectId: 'fir-auth-1aa4b',
    storageBucket: 'fir-auth-1aa4b.firebasestorage.app',
    iosBundleId: 'com.example.flutterFirebaseAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3NE2BWxMNJth8EG8QNILvaeJ2bvWaq_U',
    appId: '1:81126893407:ios:8b07574e012edbd38878ea',
    messagingSenderId: '81126893407',
    projectId: 'fir-auth-1aa4b',
    storageBucket: 'fir-auth-1aa4b.firebasestorage.app',
    iosBundleId: 'com.example.flutterFirebaseAuth',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBAat56gqL0u8wenOTR6YKOgrmzOedt2UI',
    appId: '1:81126893407:web:b0f3fe7da8d655818878ea',
    messagingSenderId: '81126893407',
    projectId: 'fir-auth-1aa4b',
    authDomain: 'fir-auth-1aa4b.firebaseapp.com',
    storageBucket: 'fir-auth-1aa4b.firebasestorage.app',
  );

}