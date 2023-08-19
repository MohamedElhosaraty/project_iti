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
    apiKey: 'AIzaSyDXEFXQoQhkHUqxLHpeeFj93YT3_eISQNc',
    appId: '1:323926330079:web:27340d32b21248ccbe776a',
    messagingSenderId: '323926330079',
    projectId: 'projectg5-2fad9',
    authDomain: 'projectg5-2fad9.firebaseapp.com',
    storageBucket: 'projectg5-2fad9.appspot.com',
    measurementId: 'G-CFKP420RDM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1L0JDFCmY4uxhLxbe7m-5C4ntdl6Axqc',
    appId: '1:323926330079:android:4f3d29308d65ecb8be776a',
    messagingSenderId: '323926330079',
    projectId: 'projectg5-2fad9',
    storageBucket: 'projectg5-2fad9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7bfWL0dC4XjyazNEZIBX-CZzgYSGR6Eg',
    appId: '1:323926330079:ios:3ccca28cb5ed6c08be776a',
    messagingSenderId: '323926330079',
    projectId: 'projectg5-2fad9',
    storageBucket: 'projectg5-2fad9.appspot.com',
    iosClientId: '323926330079-ji4hdvu2k8nui5rgcvr4i4i679uc7k7s.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectIti',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB7bfWL0dC4XjyazNEZIBX-CZzgYSGR6Eg',
    appId: '1:323926330079:ios:3ccca28cb5ed6c08be776a',
    messagingSenderId: '323926330079',
    projectId: 'projectg5-2fad9',
    storageBucket: 'projectg5-2fad9.appspot.com',
    iosClientId: '323926330079-ji4hdvu2k8nui5rgcvr4i4i679uc7k7s.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectIti',
  );
}