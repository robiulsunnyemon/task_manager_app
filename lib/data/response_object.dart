class ResponseObject{
  final int status_code;
  final bool issuccess;
  final String? errorMessage;
  final dynamic responseBody;
  ResponseObject({ required this.status_code,required this.issuccess,required this.responseBody, this.errorMessage=""});
}