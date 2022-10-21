// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc/bloc.dart';
import 'package:coffee_images_repository/coffee_images_repository.dart';
import 'package:coffeeholic/sections/discover/cubit/discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  DiscoverCubit({required CoffeeImagesRepository cofeeImageRepository})
      : _cofeeImageRepository = cofeeImageRepository,
        super(const DiscoverState());

  final CoffeeImagesRepository _cofeeImageRepository;

  Future<void> getRandomImage() async {
    // emit loading
    emit(state.copyWith(status: DiscoverStatus.loading));
    try {
      final image = await _cofeeImageRepository.getRandomImage();
      // capture and emit success
      emit(
        state.copyWith(
          currentImage: image,
          discardedImage: state.currentImage,
          status: DiscoverStatus.success,
        ),
      );
    } catch (e) {
      // if (e.runtimeType == ApiException) {}
      // capture and emit failure
      emit(state.copyWith(status: DiscoverStatus.failure));
    }
    // emit success/error
    // emit(state);
  }

  Future<void> saveImageInFavorites() async {
    if (state.currentImage == null) {
      return;
    }
    try {
      emit(state.copyWith(status: DiscoverStatus.loading));
      await _cofeeImageRepository.saveImageInFavorites(state.currentImage!);
      await getRandomImage();
    } catch (e) {
      print('PETO');
      print(e);
      emit(state.copyWith(status: DiscoverStatus.failure));
    }
  }
}
