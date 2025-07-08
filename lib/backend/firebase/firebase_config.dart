import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBSSbiYU-isln3yUY4XiyAhXLqPJaM3Zx0",
            authDomain: "facecheck-25257.firebaseapp.com",
            projectId: "facecheck-25257",
            storageBucket: "facecheck-25257.firebasestorage.app",
            messagingSenderId: "758472305944",
            appId: "1:758472305944:web:d2b1593f49c49e87af026d",
            measurementId: "G-H4R2D2M2DQ"));
  } else {
    await Firebase.initializeApp();
  }
}
