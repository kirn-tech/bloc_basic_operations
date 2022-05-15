import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_bloc_error.dart';

part 'base_bloc_state.freezed.dart';

@freezed
class BaseBlocState with _$BaseBlocState {
  const factory BaseBlocState.success() = Success;

  const factory BaseBlocState.loading() = Loading;

  const factory BaseBlocState.error(BaseBlocError error) = Error;
}
