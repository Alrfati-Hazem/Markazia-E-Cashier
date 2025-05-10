// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchSettings {

 int get branchId; String get branchNameEn; String get branchNameAr; List<BranchSettingsService> get services;
/// Create a copy of BranchSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchSettingsCopyWith<BranchSettings> get copyWith => _$BranchSettingsCopyWithImpl<BranchSettings>(this as BranchSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchSettings&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchNameEn, branchNameEn) || other.branchNameEn == branchNameEn)&&(identical(other.branchNameAr, branchNameAr) || other.branchNameAr == branchNameAr)&&const DeepCollectionEquality().equals(other.services, services));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,branchNameEn,branchNameAr,const DeepCollectionEquality().hash(services));

@override
String toString() {
  return 'BranchSettings(branchId: $branchId, branchNameEn: $branchNameEn, branchNameAr: $branchNameAr, services: $services)';
}


}

/// @nodoc
abstract mixin class $BranchSettingsCopyWith<$Res>  {
  factory $BranchSettingsCopyWith(BranchSettings value, $Res Function(BranchSettings) _then) = _$BranchSettingsCopyWithImpl;
@useResult
$Res call({
 int branchId, String branchNameEn, String branchNameAr, List<BranchSettingsService> services
});




}
/// @nodoc
class _$BranchSettingsCopyWithImpl<$Res>
    implements $BranchSettingsCopyWith<$Res> {
  _$BranchSettingsCopyWithImpl(this._self, this._then);

  final BranchSettings _self;
  final $Res Function(BranchSettings) _then;

/// Create a copy of BranchSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branchId = null,Object? branchNameEn = null,Object? branchNameAr = null,Object? services = null,}) {
  return _then(_self.copyWith(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,branchNameEn: null == branchNameEn ? _self.branchNameEn : branchNameEn // ignore: cast_nullable_to_non_nullable
as String,branchNameAr: null == branchNameAr ? _self.branchNameAr : branchNameAr // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<BranchSettingsService>,
  ));
}

}


/// @nodoc


class _BranchSettings implements BranchSettings {
  const _BranchSettings({required this.branchId, required this.branchNameEn, required this.branchNameAr, required final  List<BranchSettingsService> services}): _services = services;
  

@override final  int branchId;
@override final  String branchNameEn;
@override final  String branchNameAr;
 final  List<BranchSettingsService> _services;
@override List<BranchSettingsService> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of BranchSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchSettingsCopyWith<_BranchSettings> get copyWith => __$BranchSettingsCopyWithImpl<_BranchSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchSettings&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchNameEn, branchNameEn) || other.branchNameEn == branchNameEn)&&(identical(other.branchNameAr, branchNameAr) || other.branchNameAr == branchNameAr)&&const DeepCollectionEquality().equals(other._services, _services));
}


@override
int get hashCode => Object.hash(runtimeType,branchId,branchNameEn,branchNameAr,const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'BranchSettings(branchId: $branchId, branchNameEn: $branchNameEn, branchNameAr: $branchNameAr, services: $services)';
}


}

/// @nodoc
abstract mixin class _$BranchSettingsCopyWith<$Res> implements $BranchSettingsCopyWith<$Res> {
  factory _$BranchSettingsCopyWith(_BranchSettings value, $Res Function(_BranchSettings) _then) = __$BranchSettingsCopyWithImpl;
@override @useResult
$Res call({
 int branchId, String branchNameEn, String branchNameAr, List<BranchSettingsService> services
});




}
/// @nodoc
class __$BranchSettingsCopyWithImpl<$Res>
    implements _$BranchSettingsCopyWith<$Res> {
  __$BranchSettingsCopyWithImpl(this._self, this._then);

  final _BranchSettings _self;
  final $Res Function(_BranchSettings) _then;

/// Create a copy of BranchSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branchId = null,Object? branchNameEn = null,Object? branchNameAr = null,Object? services = null,}) {
  return _then(_BranchSettings(
branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,branchNameEn: null == branchNameEn ? _self.branchNameEn : branchNameEn // ignore: cast_nullable_to_non_nullable
as String,branchNameAr: null == branchNameAr ? _self.branchNameAr : branchNameAr // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<BranchSettingsService>,
  ));
}


}

/// @nodoc
mixin _$BranchSettingsService {

 int get serviceId; String get serviceNameEn; String get serviceNameAr; bool get isEnabled;
/// Create a copy of BranchSettingsService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchSettingsServiceCopyWith<BranchSettingsService> get copyWith => _$BranchSettingsServiceCopyWithImpl<BranchSettingsService>(this as BranchSettingsService, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchSettingsService&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.serviceNameEn, serviceNameEn) || other.serviceNameEn == serviceNameEn)&&(identical(other.serviceNameAr, serviceNameAr) || other.serviceNameAr == serviceNameAr)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,serviceId,serviceNameEn,serviceNameAr,isEnabled);

@override
String toString() {
  return 'BranchSettingsService(serviceId: $serviceId, serviceNameEn: $serviceNameEn, serviceNameAr: $serviceNameAr, isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class $BranchSettingsServiceCopyWith<$Res>  {
  factory $BranchSettingsServiceCopyWith(BranchSettingsService value, $Res Function(BranchSettingsService) _then) = _$BranchSettingsServiceCopyWithImpl;
@useResult
$Res call({
 int serviceId, String serviceNameEn, String serviceNameAr, bool isEnabled
});




}
/// @nodoc
class _$BranchSettingsServiceCopyWithImpl<$Res>
    implements $BranchSettingsServiceCopyWith<$Res> {
  _$BranchSettingsServiceCopyWithImpl(this._self, this._then);

  final BranchSettingsService _self;
  final $Res Function(BranchSettingsService) _then;

/// Create a copy of BranchSettingsService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceId = null,Object? serviceNameEn = null,Object? serviceNameAr = null,Object? isEnabled = null,}) {
  return _then(_self.copyWith(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,serviceNameEn: null == serviceNameEn ? _self.serviceNameEn : serviceNameEn // ignore: cast_nullable_to_non_nullable
as String,serviceNameAr: null == serviceNameAr ? _self.serviceNameAr : serviceNameAr // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _BranchSettingsService implements BranchSettingsService {
  const _BranchSettingsService({required this.serviceId, required this.serviceNameEn, required this.serviceNameAr, required this.isEnabled});
  

@override final  int serviceId;
@override final  String serviceNameEn;
@override final  String serviceNameAr;
@override final  bool isEnabled;

/// Create a copy of BranchSettingsService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchSettingsServiceCopyWith<_BranchSettingsService> get copyWith => __$BranchSettingsServiceCopyWithImpl<_BranchSettingsService>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchSettingsService&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.serviceNameEn, serviceNameEn) || other.serviceNameEn == serviceNameEn)&&(identical(other.serviceNameAr, serviceNameAr) || other.serviceNameAr == serviceNameAr)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,serviceId,serviceNameEn,serviceNameAr,isEnabled);

@override
String toString() {
  return 'BranchSettingsService(serviceId: $serviceId, serviceNameEn: $serviceNameEn, serviceNameAr: $serviceNameAr, isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class _$BranchSettingsServiceCopyWith<$Res> implements $BranchSettingsServiceCopyWith<$Res> {
  factory _$BranchSettingsServiceCopyWith(_BranchSettingsService value, $Res Function(_BranchSettingsService) _then) = __$BranchSettingsServiceCopyWithImpl;
@override @useResult
$Res call({
 int serviceId, String serviceNameEn, String serviceNameAr, bool isEnabled
});




}
/// @nodoc
class __$BranchSettingsServiceCopyWithImpl<$Res>
    implements _$BranchSettingsServiceCopyWith<$Res> {
  __$BranchSettingsServiceCopyWithImpl(this._self, this._then);

  final _BranchSettingsService _self;
  final $Res Function(_BranchSettingsService) _then;

/// Create a copy of BranchSettingsService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? serviceNameEn = null,Object? serviceNameAr = null,Object? isEnabled = null,}) {
  return _then(_BranchSettingsService(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as int,serviceNameEn: null == serviceNameEn ? _self.serviceNameEn : serviceNameEn // ignore: cast_nullable_to_non_nullable
as String,serviceNameAr: null == serviceNameAr ? _self.serviceNameAr : serviceNameAr // ignore: cast_nullable_to_non_nullable
as String,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
