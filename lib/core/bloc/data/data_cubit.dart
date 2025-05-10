import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/injection.dart';

part 'data_state.dart';

@lazySingleton
class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataReset());

  void triggerState(String message, bool isError, [int? statusCode]) {
    emit(DataReset());
    emit(isError ? (DataFailure(message, statusCode)) : (DataSuccess(message)));
  }
}

void triggerDataEvent(String message, bool isError, [int? statusCode]) {
  final dataCubit = getIt<DataCubit>();
  dataCubit.triggerState(message, isError, statusCode);
}
