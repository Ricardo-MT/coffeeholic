// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:cofeeholic_api/cofeeholic_api.dart';

/// {@template cofeeholic_api}
/// Interface and models for an API providing access to nice coffee images.
/// {@endtemplate}
abstract class CofeeholicApi {
  /// {@macro cofeeholic_api}
  const CofeeholicApi();

  /// Requests a new random coffee image.
  Future<CoffeeImage> getRandomImage();

  /// Saves the image as favorite.
  Future<CoffeeImage> saveImageInFavorites(CoffeeImage image);

  /// Retrieves all images saved as favorites.
  Future<List<CoffeeImage>> getFavoriteImages();

  /// Removes an image from favorites.
  ///
  /// If no image with the given id exists, a [ImageNotFoundException] error is
  /// thrown.
  Future<int> removeImageFromFavorites(CoffeeImage image);
}

/// Error thrown when an Image with a given id is not found.
class ImageNotFoundException implements Exception {}
