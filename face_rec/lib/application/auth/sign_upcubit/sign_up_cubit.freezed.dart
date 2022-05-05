// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required String emailAddress,
      required String password,
      required String fullName,
      required String matricNumber,
      String? accountType,
      String? college,
      String? department,
      String? level,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignUpState(
      emailAddress: emailAddress,
      password: password,
      fullName: fullName,
      matricNumber: matricNumber,
      accountType: accountType,
      college: college,
      department: department,
      level: level,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get matricNumber => throw _privateConstructorUsedError;
  String? get accountType => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      String password,
      String fullName,
      String matricNumber,
      String? accountType,
      String? college,
      String? department,
      String? level,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? fullName = freezed,
    Object? matricNumber = freezed,
    Object? accountType = freezed,
    Object? college = freezed,
    Object? department = freezed,
    Object? level = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      matricNumber: matricNumber == freezed
          ? _value.matricNumber
          : matricNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      String password,
      String fullName,
      String matricNumber,
      String? accountType,
      String? college,
      String? department,
      String? level,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? fullName = freezed,
    Object? matricNumber = freezed,
    Object? accountType = freezed,
    Object? college = freezed,
    Object? department = freezed,
    Object? level = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      matricNumber: matricNumber == freezed
          ? _value.matricNumber
          : matricNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpState extends _SignUpState {
  _$_SignUpState(
      {required this.emailAddress,
      required this.password,
      required this.fullName,
      required this.matricNumber,
      this.accountType,
      this.college,
      this.department,
      this.level,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption})
      : super._();

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String fullName;
  @override
  final String matricNumber;
  @override
  final String? accountType;
  @override
  final String? college;
  @override
  final String? department;
  @override
  final String? level;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpState(emailAddress: $emailAddress, password: $password, fullName: $fullName, matricNumber: $matricNumber, accountType: $accountType, college: $college, department: $department, level: $level, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.matricNumber, matricNumber) &&
            const DeepCollectionEquality()
                .equals(other.accountType, accountType) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(matricNumber),
      const DeepCollectionEquality().hash(accountType),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState extends SignUpState {
  factory _SignUpState(
      {required String emailAddress,
      required String password,
      required String fullName,
      required String matricNumber,
      String? accountType,
      String? college,
      String? department,
      String? level,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignUpState;
  _SignUpState._() : super._();

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get fullName;
  @override
  String get matricNumber;
  @override
  String? get accountType;
  @override
  String? get college;
  @override
  String? get department;
  @override
  String? get level;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
