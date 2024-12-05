```dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Provide more specific error information
      throw Exception('Failed to load data. Status code: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e, stacktrace) {
    // Log the error with details, and provide appropriate user feedback
    log('Error fetching data: $e', error: e, stackTrace: stacktrace);
    //Consider using a more user-friendly error message
    print('An error occurred while fetching data. Please try again later.'); 
  }
}
```