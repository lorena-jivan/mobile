import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

class QuoteService {
 
  void getQuote()async{
    final url = Uri.parse('https://the-one-api.dev/v2/quote');

    var filePath = p.join(Directory.current.path, 'assets', 'api_key.txt');
    File file = File(filePath);
    var fileContent = file.readAsStringSync();

    final res = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer $fileContent '
    });
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    final dataToPrint = data['docs'][1]['dialog'];
    print ('Prima quote: "$dataToPrint"');
  }

  void getQuoteByName(String name)async{

    final url = Uri.parse('https://the-one-api.dev/v2/quote?sort=character?name=$name}');

    var filePath = p.join(Directory.current.path, 'assets', 'api_key.txt');
    File file = File(filePath);
    var fileContent = file.readAsStringSync();
 
    final res = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: 'Bearer $fileContent '
    });
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    final dataToPrint = data['docs'][1]['dialog'];
    print ('Prima quote di $name: "$dataToPrint"');
  }
}