// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:typed_data';

import 'package:cofeeholic_api/cofeeholic_api.dart' as api;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_storage_cofeeholic_api/local_storage_cofeeholic_api.dart';
import 'package:local_storage_cofeeholic_api/src/models/coffee_image.dart';
import 'package:local_storage_cofeeholic_api/src/services/internet_services.dart';

/// {@template local_storage_cofeeholic_api}
/// Implementation of the CofeeholicApi that uses local storage.
/// {@endtemplate}
class LocalStorageCofeeholicApi extends api.CofeeholicApi {
  /// {@macro local_storage_cofeeholic_api}
  LocalStorageCofeeholicApi(this._apiServices) {
    // final database = openDatabase(
    //   join(await getDatabasesPath(), 'doggie_database.db'),
    // );
  }

  /// Collection name in Hive for this class
  static String get boxName => 'coffeeimage';

  final Api _apiServices;

  /// Requests a new random coffee image.
  @override
  Future<api.CoffeeImage> getRandomImage() async {
    final res =
        await _apiServices.get('https://coffee.alexflipnote.dev/random');

    final epoch = DateTime.now().millisecondsSinceEpoch;
    return api.CoffeeImage(
      imageData: res.data as Uint8List,
      timestamp: epoch,
      id: epoch.toString(),
    );
  }

  /// Saves the image as favorite in local device.
  @override
  Future<api.CoffeeImage> saveImageInFavorites(api.CoffeeImage image) async {
    print('printing');
    print(Hive.box<CoffeeImage>(boxName).isOpen);

    await Hive.box<CoffeeImage>(boxName).add(
      CoffeeImage(
        imageData: image.imageData,
        timestamp: DateTime.now().millisecondsSinceEpoch,
      ),
    );
    return image;
  }

  /// Retrieves all images saved as favorites in the device.
  @override
  Future<List<api.CoffeeImage>> getFavoriteImages() async {
    return Hive.box<CoffeeImage>(boxName)
        .values
        .map(
          (i) => api.CoffeeImage(
            imageData: i.imageData,
            timestamp: i.timestamp,
            id: i.timestamp.toString(),
          ),
        )
        .toList();
  }

  /// Removes an image from favorites in the device.
  ///
  /// If no image with the given id exists, a [ImageNotFoundException] error is
  /// thrown.
  @override
  Future<int> removeImageFromFavorites(api.CoffeeImage image) {
    // TODO: implement removeImageFromFavorites
    throw UnimplementedError();
  }

  /// Sets up Hive before use
  static Future<LocalStorageCofeeholicApi> getRepository({
    required Api apiServices,
  }) async {
    await Hive.initFlutter();
    Hive.registerAdapter(CoffeeImageAdapter());
    await Hive.openBox<CoffeeImage>(boxName);
    return LocalStorageCofeeholicApi(apiServices);
  }
}
