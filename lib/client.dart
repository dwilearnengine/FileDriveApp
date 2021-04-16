
import 'dart:typed_data';

import 'package:http/http.dart' as http;

void main()async{
  var respons = await http.get(Uri.parse('http://localhost:4040')
  );
  print(respons.body);

  var sendingRespons = await http.post(Uri.parse(
      'http://localhost:4040') ,body: Uint8List.fromList('Hai, Anda mengirim teks ini'.codeUnits)
  );

  respons = await http.get(Uri.parse('http://localhost:4040')
  );
  print(respons.body);

}