import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'third_screen_state.freezed.dart';

@freezed
class ThirdScreenState with _$ThirdScreenState {
  factory ThirdScreenState({
    Response1? response1,
    Response2? response2,
    Response3? response3,
  }) = _ThirdScreenState;
}

extension Selector on ThirdScreenState {
  ThirdScreenState copyWithSelector(dynamic type) {
    if (type is Response1) {
      return copyWith.call(response1: type);
    }
    if (type is Response2) {
      return copyWith.call(response2: type);
    }
    if (type is Response3) {
      return copyWith.call(response3: type);
    }
    return this;
  }
}
