// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('User')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.item;
    if (value != null) {
      result
        ..add('Item')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  OrdersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'User':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$OrdersRecord extends OrdersRecord {
  @override
  final String? user;
  @override
  final String? item;
  @override
  final int? price;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder)? updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._({this.user, this.item, this.price, this.status, this.ffRef})
      : super._();

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        user == other.user &&
        item == other.item &&
        price == other.price &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, user.hashCode), item.hashCode), price.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('user', user)
          ..add('item', item)
          ..add('price', price)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord? _$v;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _item;
  String? get item => _$this._item;
  set item(String? item) => _$this._item = item;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _item = $v.item;
      _price = $v.price;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    final _$result = _$v ??
        new _$OrdersRecord._(
            user: user, item: item, price: price, status: status, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
