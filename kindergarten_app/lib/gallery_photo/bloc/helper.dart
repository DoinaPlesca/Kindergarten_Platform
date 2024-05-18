import 'dart:io';
import 'dart:convert';


Future<String> convertFileToBase64(String filePath) async {
  try {
    final file = File(filePath);
    final bytes = await file.readAsBytes();
    final base64String = base64Encode(bytes);
    final dataUri = 'data:image/jpeg;base64,$base64String';  // Change MIME type if needed
    print('Base64 String: $dataUri');  // Log the base64 string
    return dataUri;
  } catch (e) {
    print('Error converting file to base64: $e');
    rethrow;
  }
}
