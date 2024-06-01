import 'package:hive/hive.dart';
part 'hive_adapter.g.dart';

@HiveType(typeId: 0)
class DiaryDB extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String text;
  @HiveField(2)
  String date;

  DiaryDB({required this.text, required this.title, required this.date});
}
