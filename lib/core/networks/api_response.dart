import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.g.dart';

class ApiResponse<T> {
  final T data;

  ApiResponse({required this.data});

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    if (json.containsKey('data')) {
      return ApiResponse<T>(data: fromJsonT(json['data']));
    } else {
      return ApiResponse<T>(data: fromJsonT(json));
    }
  }
}

@JsonSerializable(createToJson: false)
class ErrorResponse {
  final String? message;
  final String? detail;

  ErrorResponse({this.message, this.detail});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

sealed class ApiResult<T> {}

class ApiResultFailure<T> extends ApiResult<T> {
  final String error;

  ApiResultFailure(this.error);
}

class ApiResultSuccess<T> extends ApiResult<T> {
  final T? data;
  ApiResultSuccess([this.data]);
}

Future<ApiResult<T>> apiHandler<T>(
  Future<dynamic> Function() restApiCall,
) async {
  try {
    final ApiResponse<T> apiResponse = await restApiCall();
    return ApiResultSuccess(apiResponse.data);
  } on DioException catch (e) {
    final errorMsg = extractErrorMsg(e);
    handleApiErrorLogging(
      e,
      'DioException occurred in API handler, url: ${e.requestOptions.uri}, errorResponseDetails: $errorMsg',
      e.stackTrace,
    );
    return ApiResultFailure(errorMsg);
  } catch (e, stackTrace) {
    handleApiErrorLogging(
      e,
      'Unexpected error occurred in API handler',
      stackTrace,
    );
    return ApiResultFailure("Unexpected error, Please try again!");
  }
}

void handleApiErrorLogging(
  Object error,
  String reason, [
  StackTrace? stackTrace,
]) {
  if (!kReleaseMode) {
    log(error.toString());
  } else {
    // Send it to logger
  }
}

String extractErrorMsg(DioException error) {
  late String errorMsg;
  try {
    if (error.type == DioExceptionType.connectionError) {
      errorMsg = "No Internet Connection, Please try again!";
    } else {
      // Handle BE Error
      errorMsg = "Unexpected error, Please try again!";
    }
  } catch (error) {
    errorMsg = "Unexpected error, Please try again!";
  }

  return errorMsg;
}
