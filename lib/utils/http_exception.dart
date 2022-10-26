// ignore_for_file: prefer_typing_uninitialized_variables

class HttpException implements Exception {
  final message;

  HttpException(this.message);

  @override
  String toString() {
    return message;
  }
}
