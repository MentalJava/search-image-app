class ImageDto {
  num? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  num? previewWidth;
  num? previewHeight;
  String? webformatURL;
  num? webformatWidth;
  num? webformatHeight;
  String? largeImageURL;
  String? fullHDURL;
  String? imageURL;
  num? imageWidth;
  num? imageHeight;
  num? imageSize;
  num? views;
  num? downloads;
  num? likes;
  num? comments;
  num? userId;
  String? user;
  String? userImageURL;
  ImageDto({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.fullHDURL,
    this.imageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageURL,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) {
    return ImageDto(
      id: json['id'] as num?,
      pageURL: json['pageURL'] as String?,
      type: json['type'] as String?,
      tags: json['tags'] as String?,
      previewURL: json['previewURL'] as String?,
      previewWidth: json['previewWidth'] as num?,
      previewHeight: json['previewHeight'] as num?,
      webformatURL: json['webformatURL'] as String?,
      webformatWidth: json['webformatWidth'] as num?,
      webformatHeight: json['webformatHeight'] as num?,
      largeImageURL: json['largeImageURL'] as String?,
      fullHDURL: json['fullHDURL'] as String?,
      imageURL: json['imageURL'] as String?,
      imageWidth: json['imageWidth'] as num?,
      imageHeight: json['imageHeight'] as num?,
      imageSize: json['imageSize'] as num?,
      views: json['views'] as num?,
      downloads: json['downloads'] as num?,
      likes: json['likes'] as num?,
      comments: json['comments'] as num?,
      userId: json['user_id'] as num?,
      user: json['user'] as String?,
      userImageURL: json['userImageURL'] as String?,
    );
  }
}
