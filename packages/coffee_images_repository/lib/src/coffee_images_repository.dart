// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.
import 'package:cofeeholic_api/cofeeholic_api.dart';

/// {@template coffee_images_repository}
/// A repository that handles requests related to coffee images.
/// {@endtemplate}
class CoffeeImagesRepository {
  /// {@macro coffee_images_repository}
  const CoffeeImagesRepository({
    required CofeeholicApi cofeeholicApi,
  }) : _cofeeholicApi = cofeeholicApi;

  final CofeeholicApi _cofeeholicApi;

  /// Requests a new random coffee image.
  Future<CoffeeImage> getRandomImage() => _cofeeholicApi.getRandomImage();

  /// Saves the image as favorite.
  Future<CoffeeImage> saveImageInFavorites(CoffeeImage image) =>
      _cofeeholicApi.saveImageInFavorites(image);

  /// Retrieves all images saved as favorites.
  Future<List<CoffeeImage>> getFavoriteImages() =>
      _cofeeholicApi.getFavoriteImages();

  /// Removes an image from favorites.
  ///
  /// If no image with the given id exists, a [ImageNotFoundException] error is
  /// thrown.
  Future<int> removeImageFromFavorites(CoffeeImage image) =>
      _cofeeholicApi.removeImageFromFavorites(image);
}
