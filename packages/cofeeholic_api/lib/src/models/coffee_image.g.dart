// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoffeeImage _$CoffeeImageFromJson(Map<String, dynamic> json) => CoffeeImage(
      id: json['id'] as String?,
      timestamp: json['timestamp'] as int,
      imageData: json['imageData'] as Uint8List,
    );

Map<String, dynamic> _$CoffeeImageToJson(CoffeeImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp,
      'imageData': instance.imageData,
    };
