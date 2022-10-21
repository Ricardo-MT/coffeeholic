// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:developer';

import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:coffeeholic/l10n/l10n.dart';
import 'package:coffeeholic/sections/favorites/cubit/favorites_cubit.dart';
import 'package:coffeeholic/sections/favorites/cubit/favorites_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavoriteCubit(
        cofeeImageRepository: context.read<CoffeeImagesRepository>(),
      ),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: const CounterText(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.select((FavoriteCubit cubit) => cubit.state);
    log(count.images.length.toString());
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        return Column(
          children: [
            TextButton(
              onPressed: context.read<FavoriteCubit>().getImages,
              child: const Text('RESET'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.images.length,
                itemBuilder: (context, index) => Image.memory(
                  state.images[index].imageData,
                  height: 60,
                  width: 100,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
