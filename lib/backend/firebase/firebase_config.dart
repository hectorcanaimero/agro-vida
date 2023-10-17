import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDRS5w-dchRgrAmxYJbgliqfBQU7VEWNiI",
            authDomain: "palcarro-c7561.firebaseapp.com",
            projectId: "palcarro-c7561",
            storageBucket: "palcarro-c7561.appspot.com",
            messagingSenderId: "414924023560",
            appId: "1:414924023560:web:302069ddfe7d4e6dbfaebd",
            measurementId: "G-WL822E4ZC0"));
  } else {
    await Firebase.initializeApp();
  }
}
