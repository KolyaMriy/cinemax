import 'dart:io';
import 'package:client/cinemax_app.dart';
import 'package:client/core/flavor/export.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await initializeFireBase(
      apiKey: 'AIzaSyAhTRxvO1pf7WVbC0E2ZEyCyaWObOpAX68',
      appId: '1:182735058765:android:743369296169a5618ee904',
      messagingSenderId: '1:182735058765',
      projectId: 'cinemax--prod',
    );
  } else if (Platform.isIOS) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp();
  }

  final devConfig = FlavorConfig(
    flavor: Flavor.prod,
    values: FlavorValues(),
  );

  runApp(
    FlavorBanner(
      config: devConfig,
      child: const CinemaxApp(),
    ),
  );
}

Future<void> initializeFireBase({
  required String apiKey,
  required String appId,
  required String messagingSenderId,
  required String projectId,
  String? iosBundleId,
}) async {
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
    ),
  );
}
