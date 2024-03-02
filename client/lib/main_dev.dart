import 'dart:io';
import 'package:client/cinemax_app.dart';
import 'package:client/core/flavor/export.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCWnIln1jE6qtLoB--lTEiad4yGFywqQsk',
        appId: '1:194431657319:android:44a531d346d487865bfbc2',
        messagingSenderId: '1:194431657319',
        projectId: 'cinemax-dev-a8193',
      ),
    );
  } else if (Platform.isIOS) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp();
  }

  final devConfig = FlavorConfig(
    flavor: Flavor.dev,
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
