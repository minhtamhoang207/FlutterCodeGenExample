class Article {
  const Article({
    required this.id,
    required this.title,
    this.image,
    this.summary,
    this.publishedAt,
    this.featured = false,
  });

  final String id;
  final String title;
  final Uri? image;
  final String? summary;
  final DateTime? publishedAt;
  final bool featured;

  static Article fromJson(Map<String, dynamic> json) => Article(
        id: (json['id'] as int).toString(),
        title: json['title'] as String,
        image: json['imageUrl'] == null
            ? null
            : Uri.tryParse(json['imageUrl'] as String),
        summary: json['summary'] as String?,
        publishedAt: json['publishedAt'] == null
            ? null
            : DateTime.parse(json['publishedAt'] as String),
        featured: json['featured'] as bool? ?? false,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': int.parse(id),
        'title': title,
        if (image != null) 'imageUrl': image!.toString(),
        if (summary != null) 'summary': summary,
        if (publishedAt != null) 'publishedAt': publishedAt!.toIso8601String(),
        'featured': featured,
      };
}
