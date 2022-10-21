import 'dart:typed_data';

import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'coffee_image.g.dart';

/// {@template coffee image}
/// A single coffee image item.
///
/// Contains [timestamp] and [imageData].
///
/// [CoffeeImage]s are immutable and can be copied using [copyWith].
/// {@endtemplate}
@immutable
@HiveType(typeId: 0)
class CoffeeImage extends HiveObject {
  /// {@macro image}
  CoffeeImage({
    required this.timestamp,
    required this.imageData,
  });

  @HiveField(0)

  /// The epoch date of the image.
  final int timestamp;

  @HiveField(1)

  /// The binary data of the image.
  final Uint8List imageData;

  /// Returns a copy of this coffee image with the given values updated.
  ///
  /// {@macro image}
  CoffeeImage copyWith({
    String? id,
    String? timestamp,
    Uint8List? imageData,
  }) {
    return CoffeeImage(
      timestamp: this.timestamp,
      imageData: this.imageData,
    );
  }
}
