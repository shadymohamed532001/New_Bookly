import 'package:hive/hive.dart';

// part 'BookEntity.g.dart';
@HiveType(typeId: 0)
class BookEntitiy extends HiveObject {
  @HiveField(0)
  final String imagepath;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final num price;
  @HiveField(3)
  final String authername;
  @HiveField(4)
  final String description;
  @HiveField(5)
  final String bookid;

  BookEntitiy({
    required this.imagepath,
    required this.title,
    required this.price,
    required this.authername,
    required this.description,
    required this.bookid,
  });
}
