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
    r'dataInventario': PropertySchema(
      id: 0,
      name: r'dataInventario',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'ultimaAlteracao': PropertySchema(
      id: 2,
      name: r'ultimaAlteracao',
      type: IsarType.dateTime,
    ),
    r'userName': PropertySchema(
      id: 3,
      name: r'userName',
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
  return bytesCount;
}

void _equipamentoCollectionSerialize(
  EquipamentoCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dataInventario);
  writer.writeString(offsets[1], object.name);
  writer.writeDateTime(offsets[2], object.ultimaAlteracao);
  writer.writeString(offsets[3], object.userName);
}

EquipamentoCollection _equipamentoCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EquipamentoCollection();
  object.dataInventario = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[1]);
  object.ultimaAlteracao = reader.readDateTimeOrNull(offsets[2]);
  object.userName = reader.readStringOrNull(offsets[3]);
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _equipamentoCollectionGetId(EquipamentoCollection object) {
  return object.id;
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
      QAfterFilterCondition> dataInventarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dataInventario',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> dataInventarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dataInventario',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> dataInventarioEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataInventario',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> dataInventarioGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataInventario',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> dataInventarioLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataInventario',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> dataInventarioBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataInventario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
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
    Id value, {
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
    Id lower,
    Id upper, {
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
      QAfterFilterCondition> ultimaAlteracaoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ultimaAlteracao',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimaAlteracaoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ultimaAlteracao',
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimaAlteracaoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ultimaAlteracao',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimaAlteracaoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ultimaAlteracao',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimaAlteracaoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ultimaAlteracao',
        value: value,
      ));
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection,
      QAfterFilterCondition> ultimaAlteracaoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ultimaAlteracao',
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
}

extension EquipamentoCollectionQueryObject on QueryBuilder<
    EquipamentoCollection, EquipamentoCollection, QFilterCondition> {}

extension EquipamentoCollectionQueryLinks on QueryBuilder<EquipamentoCollection,
    EquipamentoCollection, QFilterCondition> {}

extension EquipamentoCollectionQuerySortBy
    on QueryBuilder<EquipamentoCollection, EquipamentoCollection, QSortBy> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByDataInventario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInventario', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByDataInventarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInventario', Sort.desc);
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
      sortByUltimaAlteracao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaAlteracao', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      sortByUltimaAlteracaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaAlteracao', Sort.desc);
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
}

extension EquipamentoCollectionQuerySortThenBy
    on QueryBuilder<EquipamentoCollection, EquipamentoCollection, QSortThenBy> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByDataInventario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInventario', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByDataInventarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInventario', Sort.desc);
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
      thenByUltimaAlteracao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaAlteracao', Sort.asc);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QAfterSortBy>
      thenByUltimaAlteracaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ultimaAlteracao', Sort.desc);
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
}

extension EquipamentoCollectionQueryWhereDistinct
    on QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct> {
  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByDataInventario() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataInventario');
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByUltimaAlteracao() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ultimaAlteracao');
    });
  }

  QueryBuilder<EquipamentoCollection, EquipamentoCollection, QDistinct>
      distinctByUserName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
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

  QueryBuilder<EquipamentoCollection, DateTime?, QQueryOperations>
      dataInventarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataInventario');
    });
  }

  QueryBuilder<EquipamentoCollection, String?, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<EquipamentoCollection, DateTime?, QQueryOperations>
      ultimaAlteracaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ultimaAlteracao');
    });
  }

  QueryBuilder<EquipamentoCollection, String?, QQueryOperations>
      userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }
}
