import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printBbCharacters() async {
    var response = await http.get(Uri.parse('https://breakingbadapi.com/api/characters'));
    if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        for (var i = 0; i < jsonResponse.length; i++) {
            print(jsonResponse[i]['name']);
        }
    } else {
        throw Exception('Failed to load characters');
    }
}
