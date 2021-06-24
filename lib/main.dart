import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initilizationFirebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initilizationFirebase,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Text(
                "Something went wrong - it was not possible to initilize firebase",
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }

        return Material(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
