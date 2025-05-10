// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BranchState {

 BaseStatus? get status; List<Branch> get branches; Branch? get selectedBranch;
/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchStateCopyWith<BranchState> get copyWith => _$BranchStateCopyWithImpl<BranchState>(this as BranchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.branches, branches)&&(identical(other.selectedBranch, selectedBranch) || other.selectedBranch == selectedBranch));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(branches),selectedBranch);

@override
String toString() {
  return 'BranchState(status: $status, branches: $branches, selectedBranch: $selectedBranch)';
}


}

/// @nodoc
abstract mixin class $BranchStateCopyWith<$Res>  {
  factory $BranchStateCopyWith(BranchState value, $Res Function(BranchState) _then) = _$BranchStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus? status, List<Branch> branches, Branch? selectedBranch
});




}
/// @nodoc
class _$BranchStateCopyWithImpl<$Res>
    implements $BranchStateCopyWith<$Res> {
  _$BranchStateCopyWithImpl(this._self, this._then);

  final BranchState _self;
  final $Res Function(BranchState) _then;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? branches = null,Object? selectedBranch = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus?,branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<Branch>,selectedBranch: freezed == selectedBranch ? _self.selectedBranch : selectedBranch // ignore: cast_nullable_to_non_nullable
as Branch?,
  ));
}

}


/// @nodoc


class _BranchState implements BranchState {
   _BranchState({this.status, final  List<Branch> branches = const [], this.selectedBranch}): _branches = branches;
  

@override final  BaseStatus? status;
 final  List<Branch> _branches;
@override@JsonKey() List<Branch> get branches {
  if (_branches is EqualUnmodifiableListView) return _branches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branches);
}

@override final  Branch? selectedBranch;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchStateCopyWith<_BranchState> get copyWith => __$BranchStateCopyWithImpl<_BranchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._branches, _branches)&&(identical(other.selectedBranch, selectedBranch) || other.selectedBranch == selectedBranch));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_branches),selectedBranch);

@override
String toString() {
  return 'BranchState(status: $status, branches: $branches, selectedBranch: $selectedBranch)';
}


}

/// @nodoc
abstract mixin class _$BranchStateCopyWith<$Res> implements $BranchStateCopyWith<$Res> {
  factory _$BranchStateCopyWith(_BranchState value, $Res Function(_BranchState) _then) = __$BranchStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus? status, List<Branch> branches, Branch? selectedBranch
});




}
/// @nodoc
class __$BranchStateCopyWithImpl<$Res>
    implements _$BranchStateCopyWith<$Res> {
  __$BranchStateCopyWithImpl(this._self, this._then);

  final _BranchState _self;
  final $Res Function(_BranchState) _then;

/// Create a copy of BranchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? branches = null,Object? selectedBranch = freezed,}) {
  return _then(_BranchState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus?,branches: null == branches ? _self._branches : branches // ignore: cast_nullable_to_non_nullable
as List<Branch>,selectedBranch: freezed == selectedBranch ? _self.selectedBranch : selectedBranch // ignore: cast_nullable_to_non_nullable
as Branch?,
  ));
}


}

// dart format on
