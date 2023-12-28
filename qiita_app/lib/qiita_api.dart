import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void fetchQiitaItems() async {
  final url = Uri.parse('https://qiita.com/api/v2/items');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    debugPrint('Response body: ${response.body}');
  } else {
    debugPrint(
        'Failed to fetch Qiita items. Status code: ${response.statusCode}');
  }
}
