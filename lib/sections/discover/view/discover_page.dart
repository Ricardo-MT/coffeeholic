// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:coffeeholic/l10n/l10n.dart';
import 'package:coffeeholic/sections/discover/discover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DiscoverCubit(
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
      // appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: const CounterText(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () =>
                context.read<DiscoverCubit>().saveImageInFavorites(),
            child: const Icon(Icons.favorite),
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            onPressed: () => context.read<DiscoverCubit>().getRandomImage(),
            // child: const Icon(Icons.replay_outlined),
            child: const Icon(Icons.replay),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.select((DiscoverCubit cubit) => cubit.state);
    if (state.currentImage == null) {
      return const Text('HOLA');
    }
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 450),
      child: SizedBox(
        key: ValueKey(state.currentImage!.hashCode),
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Image.memory(
          state.currentImage!.imageData,
          filterQuality: FilterQuality.high,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
