import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchCryptoPrices() async {
  final response = await http.get(Uri.parse('https://api.coinlore.net/api/tickers/'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load prices');
  }
}
