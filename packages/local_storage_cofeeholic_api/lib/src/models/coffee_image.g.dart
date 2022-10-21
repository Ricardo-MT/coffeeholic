// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_image.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoffeeImageAdapter extends TypeAdapter<CoffeeImage> {
  @override
  final int typeId = 0;

  @override
  CoffeeImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoffeeImage(
      timestamp: fields[0] as int,
      imageData: fields[1] as Uint8List,
    );
  }

  @override
  void write(BinaryWriter writer, CoffeeImage obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.timestamp)
      ..writeByte(1)
      ..write(obj.imageData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoffeeImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
