import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'urls.dart';

class QiitaApi {
  final int id;
  final String name;
  final List<String> types;
  // final String imageUrl;

  QiitaApi({
    required this.id,
    required this.name,
    required this.types,
  });

  factory QiitaApi.fromJson(Map<String, dynamic> json) {
    List<String> typesToList(dynamic types) {
      List<String> ret = [];
      for (int i = 0; i < types.length; i++) {
        ret.add(types[i]['type']['name']);
      }
      return ret;
    }

    return QiitaApi(
      id: json['id'],
      name: json['name'],
      types: typesToList(json['types']),
    );
  }
}

void fetchQiitaItems() async {
  final url = Uri.parse('${Urls.qiitaBaseUrl}/item');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    debugPrint('Response body: ${response.body}');
  } else {
    debugPrint(
        'Failed to fetch Qiita items. Status code: ${response.statusCode}');
  }
}
