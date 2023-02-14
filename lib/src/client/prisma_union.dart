import 'json_serializable.dart';

/// Prisma Union 2
@jsonSerializable
class PrismaUnion2<T1, T2> {
  final T1? $1;
  final T2? $2;

  const PrismaUnion2._(this.$1, this.$2);

  factory PrismaUnion2.$1(T1 value) => PrismaUnion2._(value, null);
  factory PrismaUnion2.$2(T2 value) => PrismaUnion2._(null, value);

  R when<T, R>(R Function(T) compute) {
    if ($1 is T) {
      return compute($1 as T);
    } else if ($2 is T) {
      return compute($2 as T);
    }

    throw StateError('Invalid Prisma Union');
  }

  /// Create fromJson factory
  factory PrismaUnion2.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('\$1')) {
      return PrismaUnion2.$1(json['\$1'] as T1);
    } else if (json.containsKey('\$2')) {
      return PrismaUnion2.$2(json['\$2'] as T2);
    }

    throw StateError('Invalid Prisma Union');
  }
}

/// Prisma Union 3
@jsonSerializable
class PrismaUnion3<T1, T2, T3> extends PrismaUnion2<T1, T2> {
  final T3? $3;

  const PrismaUnion3._(T1? $1, T2? $2, this.$3) : super._($1, $2);

  factory PrismaUnion3.$1(T1 value) => PrismaUnion3._(value, null, null);
  factory PrismaUnion3.$2(T2 value) => PrismaUnion3._(null, value, null);
  factory PrismaUnion3.$3(T3 value) => PrismaUnion3._(null, null, value);

  @override
  R when<T, R>(R Function(T) compute) {
    if ($3 is T) {
      return compute($3 as T);
    }

    return super.when<T, R>(compute);
  }
}

/// Prisma Union 4
@jsonSerializable
class PrismaUnion4<T1, T2, T3, T4> extends PrismaUnion3<T1, T2, T3> {
  final T4? $4;

  const PrismaUnion4._(T1? $1, T2? $2, T3? $3, this.$4) : super._($1, $2, $3);

  factory PrismaUnion4.$1(T1 value) => PrismaUnion4._(value, null, null, null);
  factory PrismaUnion4.$2(T2 value) => PrismaUnion4._(null, value, null, null);
  factory PrismaUnion4.$3(T3 value) => PrismaUnion4._(null, null, value, null);
  factory PrismaUnion4.$4(T4 value) => PrismaUnion4._(null, null, null, value);

  @override
  R when<T, R>(R Function(T) compute) {
    if ($4 is T) {
      return compute($4 as T);
    }

    return super.when<T, R>(compute);
  }
}