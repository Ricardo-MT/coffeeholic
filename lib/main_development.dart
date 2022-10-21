// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:coffeeholic/app/app.dart';
import 'package:coffeeholic/bootstrap.dart';
import 'package:flutter/material.dart';
import 'package:local_storage_cofeeholic_api/local_storage_cofeeholic_api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final todosApi =
      await LocalStorageCofeeholicApi.getRepository(apiServices: const Api());
  await bootstrap(
    todosApi,
    (cofeeimagesRepository) =>
        App(cofeeimagesRepository: cofeeimagesRepository),
  );
}
