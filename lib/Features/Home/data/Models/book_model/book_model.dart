import 'package:bookly_2/Features/Home/domain/BookEntity.dart';

import 'item.dart';

class BookModel extends BookEntitiy {
  String? kind;
  int? totalItems;
  List<Item>? items;

  BookModel({this.kind, this.totalItems, this.items})
      : super(
          imagepath: items![0].volumeInfo?.imageLinks?.thumbnail ?? '',
          title: items[0].volumeInfo!.title!,
          price: items[0].saleInfo!.listPrice!.amount!,
          authername: items[0].volumeInfo?.authors?.first ?? 'No Name',
          description: items[0].volumeInfo!.description ?? 'No Discraption',
          bookid: items[0].id!,
        );

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
