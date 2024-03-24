import 'dart:io';
import 'package:client/cinemax_app.dart';
import 'package:client/core/flavor/export.dart';
import 'package:client/features/detail_actor/data/dtos/detail_actor/detail_actor_dto.dart';
import 'package:client/features/detail_movie/data/dtos/movie_detail/movie_detail_dto.dart';
import 'package:client/features/detail_movie/data/dtos/production_company/production_company_dto.dart';
import 'package:client/features/detail_movie/movie_backdrops/data/dtos/backdrops_movie_dto.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/cast/cast_dto.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/credits_dto.dart';
import 'package:client/features/detail_movie/movie_credits/data/dtos/crew/crew_dto.dart';
import 'package:client/features/genre_list/data/dtos/genre_dto.dart';
import 'package:client/features/movie/data/dtos/list_movie/list_new_movie_dto.dart';
import 'package:client/features/movie/data/dtos/movie/movie_dto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter((await getApplicationDocumentsDirectory()).path);

  Hive
    ..registerAdapter(DetailActorDTOAdapter())
    ..registerAdapter(GenreDTOAdapter())
    ..registerAdapter(MovieDTOAdapter())
    ..registerAdapter(ListMovieDTOAdapter())
    ..registerAdapter(BackdropMoviesDTOAdapter())
    ..registerAdapter(CrewDTOAdapter())
    ..registerAdapter(CastDTOAdapter())
    ..registerAdapter(ProductionCompanyDTOAdapter())
    ..registerAdapter(MovieDetailDTOAdapter())
    ..registerAdapter(CreditsDTOAdapter());

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
