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
    apiKey: 'AIzaSyDdEldmpouap98iJcp0UC6LYWqGL6M4sCM',
    appId: '1:821467811510:web:66840e4f25f9a6cca9a017',
    messagingSenderId: '821467811510',
    projectId: 'dana-maintenance',
    authDomain: 'dana-maintenance.firebaseapp.com',
    storageBucket: 'dana-maintenance.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAN0eGM_hMNjIiCnu-nXRvTUdb_dob2VTg',
    appId: '1:821467811510:android:e8bcf7a14bb42c85a9a017',
    messagingSenderId: '821467811510',
    projectId: 'dana-maintenance',
    storageBucket: 'dana-maintenance.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0GbhM7m8dBxIXQI7ZbcpXJCj4NRkx3AI',
    appId: '1:821467811510:ios:b5cb7134d8891864a9a017',
    messagingSenderId: '821467811510',
    projectId: 'dana-maintenance',
    storageBucket: 'dana-maintenance.appspot.com',
    iosBundleId: 'com.example.theapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0GbhM7m8dBxIXQI7ZbcpXJCj4NRkx3AI',
    appId: '1:821467811510:ios:9fba97994a1f5088a9a017',
    messagingSenderId: '821467811510',
    projectId: 'dana-maintenance',
    storageBucket: 'dana-maintenance.appspot.com',
    iosBundleId: 'com.example.theapp.RunnerTests',
  );
}
