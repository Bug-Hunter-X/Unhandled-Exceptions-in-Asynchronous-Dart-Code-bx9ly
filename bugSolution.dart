```dart
Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } catch (e) {
        print('Error decoding JSON: $e');
        return null; // Or throw a custom exception
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
    return null; // Or throw a custom exception
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
    return null; // Or throw a custom exception
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow; // Re-throw to allow higher-level handling
  }
}
```