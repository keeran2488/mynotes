// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAkDUHX5dJSCoqQdP4NwtMwoxCElNPVqiU',
    appId: '1:490322092276:web:90d54d679483f1445fbea1',
    messagingSenderId: '490322092276',
    projectId: 'my-notes-flutter-4494',
    authDomain: 'my-notes-flutter-4494.firebaseapp.com',
    storageBucket: 'my-notes-flutter-4494.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD00UF7NoG0pWyYYpEpRrrCb63SzBsrYoM',
    appId: '1:490322092276:android:36de78038beb91fe5fbea1',
    messagingSenderId: '490322092276',
    projectId: 'my-notes-flutter-4494',
    storageBucket: 'my-notes-flutter-4494.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC90stOwH19AicbgYpyN1iGlVqsXg0Krpw',
    appId: '1:490322092276:ios:93db8483b0be5c525fbea1',
    messagingSenderId: '490322092276',
    projectId: 'my-notes-flutter-4494',
    storageBucket: 'my-notes-flutter-4494.appspot.com',
    iosClientId: '490322092276-g4hklfse45pe4ldrsf8qjghcms5gt74j.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}