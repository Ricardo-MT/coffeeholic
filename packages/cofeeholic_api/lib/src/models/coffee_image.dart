import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'coffee_image.g.dart';

/// {@template coffee image}
/// A single coffee image item.
///
/// Contains an [id], [timestamp] and [imageData].
///
/// If an [id] is provided, it cannot be empty. If no [id] is provided, one
/// will be generated.
///
/// [CoffeeImage]s are immutable and can be copied using [copyWith], in addition to
/// being serialized and deserialized using [toJson] and [fromJson]
/// respectively.
/// {@endtemplate}
@immutable
@JsonSerializable()
class CoffeeImage extends Equatable {
  /// {@macro todo}
  CoffeeImage({
    String? id,
    required this.timestamp,
    required this.imageData,
  })  : assert(
          id == null || id.isNotEmpty,
          'id can not be null and should be empty',
        ),
        id = id ?? const Uuid().v4();

  /// The unique identifier of the todo.
  ///
  /// Cannot be empty.
  final String id;

  /// The epoch date of the todo.
  final String timestamp;

  /// The binary data of the image.
  final String imageData;

  /// Returns a copy of this coffee image with the given values updated.
  ///
  /// {@macro todo}
  CoffeeImage copyWith({
    String? id,
    String? timestamp,
    String? imageData,
  }) {
    return CoffeeImage(
      id: id ?? this.id,
      timestamp: this.timestamp,
      imageData: this.imageData,
    );
  }

  /// Deserializes the given [JsonMap] into a [CoffeeImage].
  static CoffeeImage fromJson(JsonMap json) => _$CoffeeImageFromJson(json);

  /// Converts this [CoffeeImage] into a [JsonMap].
  JsonMap toJson() => _$CoffeeImageToJson(this);

  @override
  List<Object> get props => [id, timestamp, imageData,];
}

/// The type definition for a JSON-serializable [Map].
typedef JsonMap = Map<String, dynamic>;
