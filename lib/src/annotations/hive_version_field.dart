part of hive;

/// Annotate all fields you want to persist with [HiveVersionField].
class HiveVersionField {
  /// The index of this field.
  final int version;

  /// The default value of this field for class hive types.
  ///
  /// In enum hive types set `true` to use this enum value as default value
  /// instead of null in null-safety.
  ///
  /// ```dart
  /// @HiveType(typeId: 1)
  /// enum MyEnum {
  ///   @HiveField(0)
  ///   apple,
  ///
  ///   @HiveField(1, defaultValue: true)
  ///   pear
  /// }
  /// ```
  final Type? selectType;

  const HiveVersionField({required this.version, required this.selectType});
}
