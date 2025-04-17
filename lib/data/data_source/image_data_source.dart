abstract interface class ImageDataSource {
  Future<List<dynamic>> fetchImages(String query);
}
