import 'package:freezed_annotation/freezed_annotation.dart';

import 'model.dart';

part 'first_screen_state.freezed.dart';

@freezed
class FirstScreenState with _$FirstScreenState {
  factory FirstScreenState({
    Response1? response1,
    Response2? response2,
    Response3? response3,
    Response4? response4,
    Response5? response5,
  }) = _FirstScreenState;
}

extension Selector on FirstScreenState {
  FirstScreenState copyWithSelector(dynamic type) {
    if (type is Response1) {
      return copyWith.call(response1: type);
    }
    if (type is Response2) {
      return copyWith.call(response2: type);
    }
    if (type is Response3) {
      return copyWith.call(response3: type);
    }
    if (type is Response4) {
      return copyWith.call(response4: type);
    }
    if (type is Response5) {
      return copyWith.call(response5: type);
    }
    return this;
  }
}
