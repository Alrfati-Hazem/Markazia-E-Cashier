part of 'data_cubit.dart';

sealed class DataState {}

class DataReset extends DataState {}

class DataFailure extends DataState {
  final String message;
  final int? statusCode;

  DataFailure(this.message, [this.statusCode]);
}

class DataSuccess extends DataState {
  final String message;
  DataSuccess(this.message);
}
