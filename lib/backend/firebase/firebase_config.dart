import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCk-P6z1MLZGofGfuqIvvKDoPQ04M9H8w0",
            authDomain: "winztradewebsite.firebaseapp.com",
            projectId: "winztradewebsite",
            storageBucket: "winztradewebsite.appspot.com",
            messagingSenderId: "209157758463",
            appId: "1:209157758463:web:b850bf5c6f6b026c3ddbca",
            measurementId: "G-XGX14XNMPC"));
  } else {
    await Firebase.initializeApp();
  }
}
