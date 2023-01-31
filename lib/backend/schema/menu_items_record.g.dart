// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MenuItemsRecord> _$menuItemsRecordSerializer =
    new _$MenuItemsRecordSerializer();

class _$MenuItemsRecordSerializer
    implements StructuredSerializer<MenuItemsRecord> {
  @override
  final Iterable<Type> types = const [MenuItemsRecord, _$MenuItemsRecord];
  @override
  final String wireName = 'MenuItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MenuItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MenuItemsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MenuItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MenuItemsRecord extends MenuItemsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MenuItemsRecord([void Function(MenuItemsRecordBuilder)? updates]) =>
      (new MenuItemsRecordBuilder()..update(updates))._build();

  _$MenuItemsRecord._({this.name, this.description, this.price, this.ffRef})
      : super._();

  @override
  MenuItemsRecord rebuild(void Function(MenuItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuItemsRecordBuilder toBuilder() =>
      new MenuItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuItemsRecord &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), description.hashCode), price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuItemsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MenuItemsRecordBuilder
    implements Builder<MenuItemsRecord, MenuItemsRecordBuilder> {
  _$MenuItemsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MenuItemsRecordBuilder() {
    MenuItemsRecord._initializeBuilder(this);
  }

  MenuItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuItemsRecord;
  }

  @override
  void update(void Function(MenuItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuItemsRecord build() => _build();

  _$MenuItemsRecord _build() {
    final _$result = _$v ??
        new _$MenuItemsRecord._(
            name: name, description: description, price: price, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
