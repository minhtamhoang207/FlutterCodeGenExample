import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart'; // This is the generated file

/// The includeIfNull: false parameter ensures that only non-null fields get serialized when the Article.toJson() is called,
/// and explicitToJson: true is required for it to correctly serialize lists and custom types.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Article {
  const Article({
    required this.id,
    required this.title,
    this.image,
    this.summary,
    this.publishedAt,
    this.featured = false,
  });

  final int id;
  final String title;
  @JsonKey(name: 'imageUrl')
  final Uri? image;
  final String? summary;
  final DateTime? publishedAt;
  final bool featured;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
