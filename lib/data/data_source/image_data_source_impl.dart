// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:search_image_app/data/data_source/image_data_source.dart';
import 'package:search_image_app/data/dto/image_dto.dart';

class ImageDataSourceImpl implements ImageDataSource {
  final _baseUrl = 'https://pixabay.com/api/';
  final _key = '10711147-dc41758b93b263957026bdadb';
  final http.Client client;
  ImageDataSourceImpl({required this.client});

  @override
  Future<List<ImageDto>> fetchImages(String query) async {
    final response = await client.get(
      Uri.parse('$_baseUrl?key=$_key&q=$query&image_type=photo&pretty=true'),
    );
    final jsonResponse = jsonDecode(response.body);
    final List<dynamic> hits = jsonResponse['hits'];

    return hits.map((e) => ImageDto.fromJson(e)).toList();
  }
}
