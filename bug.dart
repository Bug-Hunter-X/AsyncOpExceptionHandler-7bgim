```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle errors appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, don't just print the error.
    print('Error fetching data: $e'); //This is a common error in Dart, and it's not descriptive.
    //Consider logging more info for debugging or using a logging library such as logging package.
  }
}
```