import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCCv0HWmJZsif8NJy_oiVEPc7fB1wmPjlE",
            authDomain: "to-do-app-xo09ms.firebaseapp.com",
            projectId: "to-do-app-xo09ms",
            storageBucket: "to-do-app-xo09ms.firebasestorage.app",
            messagingSenderId: "10760537261",
            appId: "1:10760537261:web:73f08ede3a88633c50f224"));
  } else {
    await Firebase.initializeApp();
  }
}
