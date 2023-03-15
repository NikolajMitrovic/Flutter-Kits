class GalleryModel {
  final int? id;
  final String? description;
  final String? thumbnail;
  final List<String>? file;
  bool? isLiked;

  GalleryModel({
    this.id,
    this.description,
    this.file,
    this.isLiked,
    this.thumbnail,
  });
}
