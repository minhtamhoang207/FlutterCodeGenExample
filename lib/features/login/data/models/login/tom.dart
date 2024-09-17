import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `tom.dart` with the code generated
// by freezed
part 'tom.freezed.dart';
// optional: since our [Tom] class is serialisable, 
// we must add this line. but if [Tom] was not serialisable, 
// we could skip it.
part 'tom.g.dart';

@freezed
class Tom with _$Tom {
  const factory Tom({
    /// Documentation for your parameter
    required String placeholder,
  }) = _Tom;

  /// For custom getters and methods to work. Must not have any parameter.
  // ignore: unused_element
  const Tom._();

  /// Converts a JSON [Map] into a [Tom] instance
  factory Tom.fromJson(Map<String, dynamic> json) =>
      _$TomFromJson(json);
}