// File generated and customized from FlutterFire CLI output.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'constants.dart';

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

  static final FirebaseOptions web = FirebaseOptions(
    apiKey: Secrets.webApiKey,
    appId: '1:473602958624:web:1ef3d518ce5c6ea6a1a345',
    messagingSenderId: '473602958624',
    projectId: 'airbnb-07',
    authDomain: 'airbnb-07.firebaseapp.com',
    storageBucket: 'airbnb-07.firebasestorage.app',
    measurementId: 'G-EER9WWT80Q',
  );

  static final FirebaseOptions android = FirebaseOptions(
    apiKey: Secrets.androidApiKey,
    appId: '1:473602958624:android:645ea11101d032a2a1a345',
    messagingSenderId: '473602958624',
    projectId: 'airbnb-07',
    storageBucket: 'airbnb-07.firebasestorage.app',
  );

  static final FirebaseOptions ios = FirebaseOptions(
    apiKey: Secrets.iosApiKey,
    appId: '1:473602958624:ios:5f671644f45c711ba1a345',
    messagingSenderId: '473602958624',
    projectId: 'airbnb-07',
    storageBucket: 'airbnb-07.firebasestorage.app',
    iosBundleId: 'com.example.wanderin',
  );

  static final FirebaseOptions macos = FirebaseOptions(
    apiKey: Secrets.macosApiKey,
    appId: '1:473602958624:ios:5f671644f45c711ba1a345',
    messagingSenderId: '473602958624',
    projectId: 'airbnb-07',
    storageBucket: 'airbnb-07.firebasestorage.app',
    iosBundleId: 'com.example.wanderin',
  );

  static final FirebaseOptions windows = FirebaseOptions(
    apiKey: Secrets.windowsApiKey,
    appId: '1:473602958624:web:5c1a3c7ea9ef91d0a1a345',
    messagingSenderId: '473602958624',
    projectId: 'airbnb-07',
    authDomain: 'airbnb-07.firebaseapp.com',
    storageBucket: 'airbnb-07.firebasestorage.app',
    measurementId: 'G-DXY8DK70NX',
  );
}
