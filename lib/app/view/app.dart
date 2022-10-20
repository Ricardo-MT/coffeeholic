// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:coffeeholic/l10n/l10n.dart';
import 'package:coffeeholic/sections/home/home.dart';
import 'package:coffeeholic/theming/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({ required this.cofeeimagesRepository, super.key});

  final CoffeeImagesRepository cofeeimagesRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: cofeeimagesRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({ super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlutterCoffeeholicTheme.light,
      darkTheme: FlutterCoffeeholicTheme.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
