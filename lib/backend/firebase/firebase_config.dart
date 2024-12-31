import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAQgBh1ooeIel1-TeiIRSDnpllFnQb0ZIM",
            authDomain: "masterdevelop.firebaseapp.com",
            projectId: "masterdevelop",
            storageBucket: "masterdevelop.firebasestorage.app",
            messagingSenderId: "638191903452",
            appId: "1:638191903452:web:9cfb52858c815c80630a19",
            measurementId: "G-J9162YFF4X"));
  } else {
    await Firebase.initializeApp();
  }
}
