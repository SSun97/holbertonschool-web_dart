import 'dart:convert';
import 'package:http/http.dart' as http;

// get name and quotes from https://breakingbadapi.com/ 
Future<String> generateQuote(id) async {
    try {
        var response = await http.get(Uri.parse('https://breakingbadapi.com/api/quotes/$id'));
        var jsonResponse = json.decode(response.body);
        String author = jsonResponse[0]['author'];
        String quote = jsonResponse[0]['quote'];
            return '$author : $quote';
    } catch (e) {
        return 'There are no quotes';
    }
}