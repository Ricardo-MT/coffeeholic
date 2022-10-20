// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:cofeeholic_api/cofeeholic_api.dart';
import 'package:local_storage_cofeeholic_api/src/services/internet_services.dart';

/// {@template local_storage_cofeeholic_api}
/// Implementation of the CofeeholicApi that uses local storage.
/// {@endtemplate}
class LocalStorageCofeeholicApi extends CofeeholicApi {
  /// {@macro local_storage_cofeeholic_api}
  LocalStorageCofeeholicApi(this._apiServices);
  final Api _apiServices;
  /// Retrieves all images saved as favorites in the device.
  @override
  Future<List<CoffeeImage>> getFavoriteImages() {
    // TODO: implement getFavoriteImages
    throw UnimplementedError();
  }
  
  /// Requests a new random coffee image.
  @override
  Future<CoffeeImage> getRandomImage() async{
    // TODO: implement getRandomImage
    ApiResponse res = await _apiServices.get("url");
    return (res.data as CoffeeImage);
  }
  
  /// Removes an image from favorites in the device.
  /// 
  /// If no image with the given id exists, a [ImageNotFoundException] error is
  /// thrown.
  @override
  Future<int> removeImageFromFavorites(CoffeeImage image) {
    // TODO: implement removeImageFromFavorites
    throw UnimplementedError();
  }
  
  /// Saves the image as favorite in local device. 
  @override
  Future<CoffeeImage> saveImageInFavorites() {
    // TODO: implement saveImageInFavorites
    throw UnimplementedError();
  }

}
