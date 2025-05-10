// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchSettingsState {

 BaseStatus? get status; BranchSettings? get branchSettings; bool get isAction;
/// Create a copy of BranchSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchSettingsStateCopyWith<BranchSettingsState> get copyWith => _$BranchSettingsStateCopyWithImpl<BranchSettingsState>(this as BranchSettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchSettingsState&&(identical(other.status, status) || other.status == status)&&(identical(other.branchSettings, branchSettings) || other.branchSettings == branchSettings)&&(identical(other.isAction, isAction) || other.isAction == isAction));
}


@override
int get hashCode => Object.hash(runtimeType,status,branchSettings,isAction);

@override
String toString() {
  return 'BranchSettingsState(status: $status, branchSettings: $branchSettings, isAction: $isAction)';
}


}

/// @nodoc
abstract mixin class $BranchSettingsStateCopyWith<$Res>  {
  factory $BranchSettingsStateCopyWith(BranchSettingsState value, $Res Function(BranchSettingsState) _then) = _$BranchSettingsStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus? status, BranchSettings? branchSettings, bool isAction
});


$BranchSettingsCopyWith<$Res>? get branchSettings;

}
/// @nodoc
class _$BranchSettingsStateCopyWithImpl<$Res>
    implements $BranchSettingsStateCopyWith<$Res> {
  _$BranchSettingsStateCopyWithImpl(this._self, this._then);

  final BranchSettingsState _self;
  final $Res Function(BranchSettingsState) _then;

/// Create a copy of BranchSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? branchSettings = freezed,Object? isAction = null,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus?,branchSettings: freezed == branchSettings ? _self.branchSettings : branchSettings // ignore: cast_nullable_to_non_nullable
as BranchSettings?,isAction: null == isAction ? _self.isAction : isAction // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of BranchSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchSettingsCopyWith<$Res>? get branchSettings {
    if (_self.branchSettings == null) {
    return null;
  }

  return $BranchSettingsCopyWith<$Res>(_self.branchSettings!, (value) {
    return _then(_self.copyWith(branchSettings: value));
  });
}
}


/// @nodoc


class _BranchSettingsState implements BranchSettingsState {
  const _BranchSettingsState({this.status, this.branchSettings, this.isAction = false});
  

@override final  BaseStatus? status;
@override final  BranchSettings? branchSettings;
@override@JsonKey() final  bool isAction;

/// Create a copy of BranchSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchSettingsStateCopyWith<_BranchSettingsState> get copyWith => __$BranchSettingsStateCopyWithImpl<_BranchSettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchSettingsState&&(identical(other.status, status) || other.status == status)&&(identical(other.branchSettings, branchSettings) || other.branchSettings == branchSettings)&&(identical(other.isAction, isAction) || other.isAction == isAction));
}


@override
int get hashCode => Object.hash(runtimeType,status,branchSettings,isAction);

@override
String toString() {
  return 'BranchSettingsState(status: $status, branchSettings: $branchSettings, isAction: $isAction)';
}


}

/// @nodoc
abstract mixin class _$BranchSettingsStateCopyWith<$Res> implements $BranchSettingsStateCopyWith<$Res> {
  factory _$BranchSettingsStateCopyWith(_BranchSettingsState value, $Res Function(_BranchSettingsState) _then) = __$BranchSettingsStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus? status, BranchSettings? branchSettings, bool isAction
});


@override $BranchSettingsCopyWith<$Res>? get branchSettings;

}
/// @nodoc
class __$BranchSettingsStateCopyWithImpl<$Res>
    implements _$BranchSettingsStateCopyWith<$Res> {
  __$BranchSettingsStateCopyWithImpl(this._self, this._then);

  final _BranchSettingsState _self;
  final $Res Function(_BranchSettingsState) _then;

/// Create a copy of BranchSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? branchSettings = freezed,Object? isAction = null,}) {
  return _then(_BranchSettingsState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus?,branchSettings: freezed == branchSettings ? _self.branchSettings : branchSettings // ignore: cast_nullable_to_non_nullable
as BranchSettings?,isAction: null == isAction ? _self.isAction : isAction // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of BranchSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchSettingsCopyWith<$Res>? get branchSettings {
    if (_self.branchSettings == null) {
    return null;
  }

  return $BranchSettingsCopyWith<$Res>(_self.branchSettings!, (value) {
    return _then(_self.copyWith(branchSettings: value));
  });
}
}

// dart format on
