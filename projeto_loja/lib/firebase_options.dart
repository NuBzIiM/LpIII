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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyANVj3dqAnsNUGEthlsTenK1IubeNYWudY',
    appId: '1:952529220544:web:5afa950bef6952b19fce25',
    messagingSenderId: '952529220544',
    projectId: 'projeto-loja-4a944',
    authDomain: 'projeto-loja-4a944.firebaseapp.com',
    storageBucket: 'projeto-loja-4a944.firebasestorage.app',
    measurementId: 'G-P0KEDEK8KD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcpxQygnej_kQxTpbxVcIgyMV13nSE3tk',
    appId: '1:952529220544:android:d90ce112aaba1ac19fce25',
    messagingSenderId: '952529220544',
    projectId: 'projeto-loja-4a944',
    storageBucket: 'projeto-loja-4a944.firebasestorage.app',
  );
}
