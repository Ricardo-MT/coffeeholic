// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:coffeeholic/sections/favorites/cubit/favorites_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({required CoffeeImagesRepository cofeeImageRepository})
      : _cofeeImageRepository = cofeeImageRepository,
        super(const FavoriteState());

  final CoffeeImagesRepository _cofeeImageRepository;

  Future<void> getImages() async {
    // emit loading
    emit(state.copyWith(status: FavoritesStatus.loading));
    try {
      log('bien 1');
      final images = await _cofeeImageRepository.getFavoriteImages();
      log('bien 0');
      // capture and emit success
      emit(
        state.copyWith(
          images: images,
          status: FavoritesStatus.success,
        ),
      );
    } catch (e) {
      log(e.toString());
      // if (e.runtimeType == ApiException) {}
      // capture and emit failure
      emit(state.copyWith(status: FavoritesStatus.failure));
    }
    // emit success/error
    // emit(state);
  }
}
