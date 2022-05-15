import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_bloc_error.freezed.dart';

@freezed
class BaseBlocError with _$BaseBlocError {
  factory BaseBlocError({required String title, required String message, required List<dynamic> errors}) =
      _BaseBlocError;
}
