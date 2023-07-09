class ApiResponse<T> {
  String status;
  String message;
  T data;

  ApiResponse({required this.status, required this.message, required this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json, Function fromJsonT) {
    return ApiResponse(
      status: json['status'],
      message: json['message'],
      data: fromJsonT(json['data']),
    );
  }
}
