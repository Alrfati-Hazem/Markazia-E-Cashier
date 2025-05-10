sealed class BaseStatus {}

class BaseStatusInitial extends BaseStatus {}

class BaseStatusLoading extends BaseStatus {}

class BaseStatusFailure extends BaseStatus {
  final Exception? error;

  BaseStatusFailure([this.error]);
}

class BaseStatusSuccess<T> extends BaseStatus {
  final T? data;
  BaseStatusSuccess([this.data]);
}
