import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String title,
    Uri? image,
    String? summary,
    DateTime? publishedAt,
    @Default(false) bool featured,
  }) = _Article;
}
