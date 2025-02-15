import 'dart:convert';
import 'package:http/http.dart' as http;

class GeminiService {
  static const String apiKey = "AIzaSyCddkT6_8Gmcn651SlAjuyILje4dY3708I";
  static const String apiUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent";

  static Future<String> getResponse(String userInput) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl?key=$apiKey'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {"text": userInput},
              ],
            },
          ],
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['candidates'][0]['content']['parts'][0]['text'] ??
            "No response found.";
      } else {
        print("Error response: ${response.body}");
        return "Error: ${response.statusCode}";
      }
    } catch (e) {
      print("Exception occurred: $e");
      return "Failed to fetch response.";
    }
  }
}
