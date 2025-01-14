```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error response codes (404, 500, etc.)
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests or JSON decoding
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled by the caller
  }
}
```