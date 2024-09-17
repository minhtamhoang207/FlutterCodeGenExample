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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Article &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          image == other.image &&
          summary == other.summary &&
          publishedAt == other.publishedAt &&
          featured == other.featured;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      image.hashCode ^
      summary.hashCode ^
      publishedAt.hashCode ^
      featured.hashCode;

  @override
  String toString() => 'Article(id: $id, title: $title, '
      'image: $image, summary: $summary, publishedAt: $publishedAt, '
      'featured: $featured';
}
