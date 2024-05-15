import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJrcIwZj0QbJiSalGQcYrxz2t-lbn1z1w",
            authDomain: "igwy2-ubmoia.firebaseapp.com",
            projectId: "igwy2-ubmoia",
            storageBucket: "igwy2-ubmoia.appspot.com",
            messagingSenderId: "1060264402941",
            appId: "1:1060264402941:web:9c4bafc03dc44ae19f0394"));
  } else {
    await Firebase.initializeApp();
  }
}
