import 'package:freezed_annotation/freezed_annotation.dart';
part 'dt_failure.freezed.dart';

@freezed
class DtFailure with _$DtFailure {
  const DtFailure._();
  const factory DtFailure.unexpected() = _Unexpected;
  const factory DtFailure.insufficientPermission() = _InsufficientPermission;
  const factory DtFailure.unableToUpdate() = _UnableToUpdate;
}
