// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipamento_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEquipamentoCollectionCollection on Isar {
  IsarCollection<EquipamentoCollection> get equipamentoCollections =>
      this.collection();
}

const EquipamentoCollectionSchema = CollectionSchema(
  name: r'EquipamentoCollection',
  id: 7939818137474915578,
  properties: {
    r'equipamentoId': PropertySchema(
      id: 0,
      name: r'equipamentoId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'ultimoInventario': PropertySchema(
      id: 2,
      name: r'ultimoInventario',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 3,
      name: r'userId',
      type: IsarType.long,
    ),
    r'userName': PropertySchema(
      id: 4,
      name: r'userName',
      type: IsarType.string,
    ),
    r'uuid': PropertySchema(
      id: 5,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _equipamentoCollectionEstimateSize,
  serialize: _equipamentoCollectionSerialize,
  deserialize: _equipamentoCollectionDeserialize,
  deserializeProp: _equipamentoCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _equipamentoCollectionGetId,
  getLinks: _equipamentoCollectionGetLinks,
  attach: _equipamentoCollectionAttach,
  version: '3.1.8',
);

int _equipamentoCollectionEstimateSize(
  EquipamentoCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.userName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _equipamentoCollectionSerialize(
  EquipamentoCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.equipamentoId);
  writer.writeString(offsets[1], object.name);
  writer.writeDateTime(offsets[2], object.ultimoInventario);
  writer.writeLong(offsets[3], object.userId);
  writer.writeString(offsets[4], object.userName);
  writer.writeString(offsets[5], object.uuid);
}

EquipamentoCollection _equipamentoCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EquipamentoCollection();
  object.equipamentoId = reader.readLongOrNull(offsets[0]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[1]);
  object.ultimoInventario = reader.readDateTimeOrNull(offsets[2]);
  object.userId = reader.readLongOrNull(offsets[3]);
  object.userName = reader.readStringOrNull(offsets[4]);
  object.uuid = reader.readStringOrNull(offsets[5]);
  return object;
}

P _equipamentoCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _equipamentoCollectionGetId(EquipamentoCollection object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _equipamentoCollectionGetLinks(
    EquipamentoCollection object) {
  return [];
}

void _equipamentoCollectionAttach(
    IsarCollection<dynamic> col, Id id, EquipamentoCollection object) {
  object.id = id;
}

extension EquipamentoCollectionQueryWhereSort
    on QueryBuilder<EquipamentoCollection, EquipamentoCollection, QWhere> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EquipamentoCollectionQueryWhere on QueryBuilder<EquipamentoCollection,
    EquipamentoCollection, QWhereClause> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EquipamentoCollectionQueryFilter on QueryBuilder<
    EquipamentoCollection, EquipamentoCollection, QFilterCondition> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> equipamentoIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'equipamentoId',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> equipamentoIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'equipamentoId',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> equipamentoIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'equipamentoId',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> equipamentoIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'equipamentoId',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> equipamentoIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'equipamentoId',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> equipamentoIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'equipamentoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimoInventarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ultimoInventario',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimoInventarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ultimoInventario',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimoInventarioEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ultimoInventario',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimoInventarioGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ultimoInventario',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimoInventarioLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ultimoInventario',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimoInventarioBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ultimoInventario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userName',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userName',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
          QAfterFilterCondition>
      userNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
          QAfterFilterCondition>
      userNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> userNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
          QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
          QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension EquipamentoCollectionQueryObject on QueryBuilder<
    EquipamentoCollection, EquipamentoCollection, QFilterCondition> {}

extension EquipamentoCollectionQueryLinks on QueryBuilder<EquipamentoCollection,
    EquipamentoCollection, QFilterCondition> {}

extension EquipamentoCollectionQuerySortBy
    on QueryBuilder<EquipamentoCollection, EquipamentoCollection, QSortBy> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByEquipamentoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipamentoId', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByEquipamentoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipamentoId', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUltimoInventario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoInventario', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUltimoInventarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoInventario', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension EquipamentoCollectionQuerySortThenBy
    on QueryBuilder<EquipamentoCollection, EquipamentoCollection, QSortThenBy> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByEquipamentoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipamentoId', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByEquipamentoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipamentoId', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUltimoInventario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoInventario', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUltimoInventarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimoInventario', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension EquipamentoCollectionQueryWhereDistinct
    on QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByEquipamentoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'equipamentoId');
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByUltimoInventario() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ultimoInventario');
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByUserName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension EquipamentoCollectionQueryProperty on QueryBuilder<
    EquipamentoCollection, EquipamentoCollection, QQueryProperty> {
  QueryBuilder<EquipamentoCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EquipamentoCollection, int?, QQueryOperations>
      equipamentoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'equipamentoId');
    });
  }

  QueryBuilder<EquipamentoCollection, String?, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<EquipamentoCollection, DateTime?, QQueryOperations>
      ultimoInventarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ultimoInventario');
    });
  }

  QueryBuilder<EquipamentoCollection, int?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<EquipamentoCollection, String?, QQueryOperations>
      userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }

  QueryBuilder<EquipamentoCollection, String?, QQueryOperations>
      uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
