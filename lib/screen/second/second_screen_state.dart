import 'package:freezed_annotation/freezed_annotation.dart';
import 'model.dart';

part 'second_screen_state.freezed.dart';

@freezed
class SecondScreenState with _$SecondScreenState {
  factory SecondScreenState({
    Response1? response1,
    Response2? response2,
    Response3? response3,
  }) = _SecondScreenState;
}

extension Selector on SecondScreenState {
  SecondScreenState copyWithSelector(dynamic type) {
    if (type is Response1) {
      return copyWith.call(response1: type);
    }
    if (type is Response2) {
      return copyWith.call(response2: type, response1: type.response1);
    }
    if (type is Response3) {
      return copyWith.call(response3: type);
    }
    return this;
  }
}
