// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiaryDBAdapter extends TypeAdapter<DiaryDB> {
  @override
  final int typeId = 0;

  @override
  DiaryDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiaryDB(
      text: fields[1] as String,
      title: fields[0] as String,
      date: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, DiaryDB obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiaryDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
