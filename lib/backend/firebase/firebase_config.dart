import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBoHm3ZqjD9_h4o0nZF98llqQHkerFDpYs",
            authDomain: "tapneat-1969b.firebaseapp.com",
            projectId: "tapneat-1969b",
            storageBucket: "tapneat-1969b.appspot.com",
            messagingSenderId: "756522716813",
            appId: "1:756522716813:web:b139b2a6ccef56d6885cc4",
            measurementId: "G-WQPFP85PT5"));
  } else {
    await Firebase.initializeApp();
  }
}
