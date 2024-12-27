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
    apiKey: 'AIzaSyCQMISptyjRSTTQzL-EUHnU1dA9sfhI0-E',
    appId: '1:143291502280:web:57596e02a065d31f8f9ffd',
    messagingSenderId: '143291502280',
    projectId: 'appdevfinalexam-bcfd4',
    authDomain: 'appdevfinalexam-bcfd4.firebaseapp.com',
    storageBucket: 'appdevfinalexam-bcfd4.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFZ-jwe1OHrXHYEH0TEEGXotCZUv4CKvE',
    appId: '1:143291502280:android:c2fff3cdc14a57d68f9ffd',
    messagingSenderId: '143291502280',
    projectId: 'appdevfinalexam-bcfd4',
    storageBucket: 'appdevfinalexam-bcfd4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAbdVwZKjrtDiQJ0ujfd-E2xsdY-Z0ZyGE',
    appId: '1:143291502280:ios:cec031dd59438fdd8f9ffd',
    messagingSenderId: '143291502280',
    projectId: 'appdevfinalexam-bcfd4',
    storageBucket: 'appdevfinalexam-bcfd4.firebasestorage.app',
    iosBundleId: 'com.example.appDevFinalExam',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAbdVwZKjrtDiQJ0ujfd-E2xsdY-Z0ZyGE',
    appId: '1:143291502280:ios:cec031dd59438fdd8f9ffd',
    messagingSenderId: '143291502280',
    projectId: 'appdevfinalexam-bcfd4',
    storageBucket: 'appdevfinalexam-bcfd4.firebasestorage.app',
    iosBundleId: 'com.example.appDevFinalExam',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCQMISptyjRSTTQzL-EUHnU1dA9sfhI0-E',
    appId: '1:143291502280:web:8e7fda3b1f81e81b8f9ffd',
    messagingSenderId: '143291502280',
    projectId: 'appdevfinalexam-bcfd4',
    authDomain: 'appdevfinalexam-bcfd4.firebaseapp.com',
    storageBucket: 'appdevfinalexam-bcfd4.firebasestorage.app',
  );

}