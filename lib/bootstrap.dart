// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cofeeholic_api/cofeeholic_api.dart';
import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:flutter/widgets.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  CofeeholicApi coffeeholicApi,
  FutureOr<Widget> Function(CoffeeImagesRepository cofeeimagesRepository) builder,
  ) async { FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  final cofeeimagesRepository = CoffeeImagesRepository(cofeeholicApi: coffeeholicApi);


  await runZonedGuarded(
    () async => runApp(await builder(cofeeimagesRepository)),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
