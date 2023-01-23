// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GameResult> _$gameResultSerializer = new _$GameResultSerializer();
Serializer<Game> _$gameSerializer = new _$GameSerializer();

class _$GameResultSerializer implements StructuredSerializer<GameResult> {
  @override
  final Iterable<Type> types = const [GameResult, _$GameResult];
  @override
  final String wireName = 'GameResult';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Game)])),
    ];

    return result;
  }

  @override
  GameResult deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Game)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GameSerializer implements StructuredSerializer<Game> {
  @override
  final Iterable<Type> types = const [Game, _$Game];
  @override
  final String wireName = 'Game';

  @override
  Iterable<Object?> serialize(Serializers serializers, Game object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'reviews_count',
      serializers.serialize(object.reviewsCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.backgroundImage;
    if (value != null) {
      result
        ..add('background_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ratingTop;
    if (value != null) {
      result
        ..add('rating_top')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ratings;
    if (value != null) {
      result
        ..add('ratings')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Rating)])));
    }
    value = object.ratingsCount;
    if (value != null) {
      result
        ..add('ratings_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reviewsTextCount;
    if (value != null) {
      result
        ..add('reviews_text_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.added;
    if (value != null) {
      result
        ..add('added')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.addedByStatus;
    if (value != null) {
      result
        ..add('added_by_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AddedByStatus)));
    }
    value = object.metacritc;
    if (value != null) {
      result
        ..add('metacritic')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.playtime;
    if (value != null) {
      result
        ..add('playtime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.updated;
    if (value != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.platforms;
    if (value != null) {
      result
        ..add('platforms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PlatformResult)])));
    }
    value = object.parentPlatforms;
    if (value != null) {
      result
        ..add('parent_platforms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PlatformResult)])));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Genre)])));
    }
    value = object.stores;
    if (value != null) {
      result
        ..add('stores')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(StoreResult)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tag)])));
    }
    value = object.esrbRating;
    if (value != null) {
      result
        ..add('esrb_rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(EsrbRating)));
    }
    value = object.shortScreenshots;
    if (value != null) {
      result
        ..add('short_screenshots')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ShortScreenshot)])));
    }
    return result;
  }

  @override
  Game deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'background_image':
          result.backgroundImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'rating_top':
          result.ratingTop = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ratings':
          result.ratings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Rating)]))!
              as BuiltList<Object?>);
          break;
        case 'ratings_count':
          result.ratingsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reviews_text_count':
          result.reviewsTextCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'added':
          result.added = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'added_by_status':
          result.addedByStatus.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddedByStatus))! as AddedByStatus);
          break;
        case 'metacritic':
          result.metacritc = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'playtime':
          result.playtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviews_count':
          result.reviewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'platforms':
          result.platforms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlatformResult)]))!
              as BuiltList<Object?>);
          break;
        case 'parent_platforms':
          result.parentPlatforms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PlatformResult)]))!
              as BuiltList<Object?>);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Genre)]))!
              as BuiltList<Object?>);
          break;
        case 'stores':
          result.stores.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StoreResult)]))!
              as BuiltList<Object?>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tag)]))!
              as BuiltList<Object?>);
          break;
        case 'esrb_rating':
          result.esrbRating.replace(serializers.deserialize(value,
              specifiedType: const FullType(EsrbRating))! as EsrbRating);
          break;
        case 'short_screenshots':
          result.shortScreenshots.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ShortScreenshot)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GameResult extends GameResult {
  @override
  final BuiltList<Game> results;

  factory _$GameResult([void Function(GameResultBuilder)? updates]) =>
      (new GameResultBuilder()..update(updates))._build();

  _$GameResult._({required this.results}) : super._() {
    BuiltValueNullFieldError.checkNotNull(results, r'GameResult', 'results');
  }

  @override
  GameResult rebuild(void Function(GameResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameResultBuilder toBuilder() => new GameResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameResult && results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GameResult')..add('results', results))
        .toString();
  }
}

class GameResultBuilder implements Builder<GameResult, GameResultBuilder> {
  _$GameResult? _$v;

  ListBuilder<Game>? _results;
  ListBuilder<Game> get results => _$this._results ??= new ListBuilder<Game>();
  set results(ListBuilder<Game>? results) => _$this._results = results;

  GameResultBuilder();

  GameResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameResult;
  }

  @override
  void update(void Function(GameResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GameResult build() => _build();

  _$GameResult _build() {
    _$GameResult _$result;
    try {
      _$result = _$v ?? new _$GameResult._(results: results.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GameResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Game extends Game {
  @override
  final int id;
  @override
  final String slug;
  @override
  final String name;
  @override
  final String? backgroundImage;
  @override
  final double? rating;
  @override
  final int? ratingTop;
  @override
  final BuiltList<Rating>? ratings;
  @override
  final int? ratingsCount;
  @override
  final int? reviewsTextCount;
  @override
  final int? added;
  @override
  final AddedByStatus? addedByStatus;
  @override
  final int? metacritc;
  @override
  final int? playtime;
  @override
  final String? updated;
  @override
  final int reviewsCount;
  @override
  final BuiltList<PlatformResult>? platforms;
  @override
  final BuiltList<PlatformResult>? parentPlatforms;
  @override
  final BuiltList<Genre>? genres;
  @override
  final BuiltList<StoreResult>? stores;
  @override
  final BuiltList<Tag>? tags;
  @override
  final EsrbRating? esrbRating;
  @override
  final BuiltList<ShortScreenshot>? shortScreenshots;

  factory _$Game([void Function(GameBuilder)? updates]) =>
      (new GameBuilder()..update(updates))._build();

  _$Game._(
      {required this.id,
      required this.slug,
      required this.name,
      this.backgroundImage,
      this.rating,
      this.ratingTop,
      this.ratings,
      this.ratingsCount,
      this.reviewsTextCount,
      this.added,
      this.addedByStatus,
      this.metacritc,
      this.playtime,
      this.updated,
      required this.reviewsCount,
      this.platforms,
      this.parentPlatforms,
      this.genres,
      this.stores,
      this.tags,
      this.esrbRating,
      this.shortScreenshots})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Game', 'id');
    BuiltValueNullFieldError.checkNotNull(slug, r'Game', 'slug');
    BuiltValueNullFieldError.checkNotNull(name, r'Game', 'name');
    BuiltValueNullFieldError.checkNotNull(
        reviewsCount, r'Game', 'reviewsCount');
  }

  @override
  Game rebuild(void Function(GameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameBuilder toBuilder() => new GameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Game &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        backgroundImage == other.backgroundImage &&
        rating == other.rating &&
        ratingTop == other.ratingTop &&
        ratings == other.ratings &&
        ratingsCount == other.ratingsCount &&
        reviewsTextCount == other.reviewsTextCount &&
        added == other.added &&
        addedByStatus == other.addedByStatus &&
        metacritc == other.metacritc &&
        playtime == other.playtime &&
        updated == other.updated &&
        reviewsCount == other.reviewsCount &&
        platforms == other.platforms &&
        parentPlatforms == other.parentPlatforms &&
        genres == other.genres &&
        stores == other.stores &&
        tags == other.tags &&
        esrbRating == other.esrbRating &&
        shortScreenshots == other.shortScreenshots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, backgroundImage.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingTop.hashCode);
    _$hash = $jc(_$hash, ratings.hashCode);
    _$hash = $jc(_$hash, ratingsCount.hashCode);
    _$hash = $jc(_$hash, reviewsTextCount.hashCode);
    _$hash = $jc(_$hash, added.hashCode);
    _$hash = $jc(_$hash, addedByStatus.hashCode);
    _$hash = $jc(_$hash, metacritc.hashCode);
    _$hash = $jc(_$hash, playtime.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, reviewsCount.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, parentPlatforms.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, stores.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, esrbRating.hashCode);
    _$hash = $jc(_$hash, shortScreenshots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Game')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('backgroundImage', backgroundImage)
          ..add('rating', rating)
          ..add('ratingTop', ratingTop)
          ..add('ratings', ratings)
          ..add('ratingsCount', ratingsCount)
          ..add('reviewsTextCount', reviewsTextCount)
          ..add('added', added)
          ..add('addedByStatus', addedByStatus)
          ..add('metacritc', metacritc)
          ..add('playtime', playtime)
          ..add('updated', updated)
          ..add('reviewsCount', reviewsCount)
          ..add('platforms', platforms)
          ..add('parentPlatforms', parentPlatforms)
          ..add('genres', genres)
          ..add('stores', stores)
          ..add('tags', tags)
          ..add('esrbRating', esrbRating)
          ..add('shortScreenshots', shortScreenshots))
        .toString();
  }
}

class GameBuilder implements Builder<Game, GameBuilder> {
  _$Game? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _backgroundImage;
  String? get backgroundImage => _$this._backgroundImage;
  set backgroundImage(String? backgroundImage) =>
      _$this._backgroundImage = backgroundImage;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  int? _ratingTop;
  int? get ratingTop => _$this._ratingTop;
  set ratingTop(int? ratingTop) => _$this._ratingTop = ratingTop;

  ListBuilder<Rating>? _ratings;
  ListBuilder<Rating> get ratings =>
      _$this._ratings ??= new ListBuilder<Rating>();
  set ratings(ListBuilder<Rating>? ratings) => _$this._ratings = ratings;

  int? _ratingsCount;
  int? get ratingsCount => _$this._ratingsCount;
  set ratingsCount(int? ratingsCount) => _$this._ratingsCount = ratingsCount;

  int? _reviewsTextCount;
  int? get reviewsTextCount => _$this._reviewsTextCount;
  set reviewsTextCount(int? reviewsTextCount) =>
      _$this._reviewsTextCount = reviewsTextCount;

  int? _added;
  int? get added => _$this._added;
  set added(int? added) => _$this._added = added;

  AddedByStatusBuilder? _addedByStatus;
  AddedByStatusBuilder get addedByStatus =>
      _$this._addedByStatus ??= new AddedByStatusBuilder();
  set addedByStatus(AddedByStatusBuilder? addedByStatus) =>
      _$this._addedByStatus = addedByStatus;

  int? _metacritc;
  int? get metacritc => _$this._metacritc;
  set metacritc(int? metacritc) => _$this._metacritc = metacritc;

  int? _playtime;
  int? get playtime => _$this._playtime;
  set playtime(int? playtime) => _$this._playtime = playtime;

  String? _updated;
  String? get updated => _$this._updated;
  set updated(String? updated) => _$this._updated = updated;

  int? _reviewsCount;
  int? get reviewsCount => _$this._reviewsCount;
  set reviewsCount(int? reviewsCount) => _$this._reviewsCount = reviewsCount;

  ListBuilder<PlatformResult>? _platforms;
  ListBuilder<PlatformResult> get platforms =>
      _$this._platforms ??= new ListBuilder<PlatformResult>();
  set platforms(ListBuilder<PlatformResult>? platforms) =>
      _$this._platforms = platforms;

  ListBuilder<PlatformResult>? _parentPlatforms;
  ListBuilder<PlatformResult> get parentPlatforms =>
      _$this._parentPlatforms ??= new ListBuilder<PlatformResult>();
  set parentPlatforms(ListBuilder<PlatformResult>? parentPlatforms) =>
      _$this._parentPlatforms = parentPlatforms;

  ListBuilder<Genre>? _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= new ListBuilder<Genre>();
  set genres(ListBuilder<Genre>? genres) => _$this._genres = genres;

  ListBuilder<StoreResult>? _stores;
  ListBuilder<StoreResult> get stores =>
      _$this._stores ??= new ListBuilder<StoreResult>();
  set stores(ListBuilder<StoreResult>? stores) => _$this._stores = stores;

  ListBuilder<Tag>? _tags;
  ListBuilder<Tag> get tags => _$this._tags ??= new ListBuilder<Tag>();
  set tags(ListBuilder<Tag>? tags) => _$this._tags = tags;

  EsrbRatingBuilder? _esrbRating;
  EsrbRatingBuilder get esrbRating =>
      _$this._esrbRating ??= new EsrbRatingBuilder();
  set esrbRating(EsrbRatingBuilder? esrbRating) =>
      _$this._esrbRating = esrbRating;

  ListBuilder<ShortScreenshot>? _shortScreenshots;
  ListBuilder<ShortScreenshot> get shortScreenshots =>
      _$this._shortScreenshots ??= new ListBuilder<ShortScreenshot>();
  set shortScreenshots(ListBuilder<ShortScreenshot>? shortScreenshots) =>
      _$this._shortScreenshots = shortScreenshots;

  GameBuilder();

  GameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _slug = $v.slug;
      _name = $v.name;
      _backgroundImage = $v.backgroundImage;
      _rating = $v.rating;
      _ratingTop = $v.ratingTop;
      _ratings = $v.ratings?.toBuilder();
      _ratingsCount = $v.ratingsCount;
      _reviewsTextCount = $v.reviewsTextCount;
      _added = $v.added;
      _addedByStatus = $v.addedByStatus?.toBuilder();
      _metacritc = $v.metacritc;
      _playtime = $v.playtime;
      _updated = $v.updated;
      _reviewsCount = $v.reviewsCount;
      _platforms = $v.platforms?.toBuilder();
      _parentPlatforms = $v.parentPlatforms?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _stores = $v.stores?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _esrbRating = $v.esrbRating?.toBuilder();
      _shortScreenshots = $v.shortScreenshots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Game other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Game;
  }

  @override
  void update(void Function(GameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Game build() => _build();

  _$Game _build() {
    _$Game _$result;
    try {
      _$result = _$v ??
          new _$Game._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Game', 'id'),
              slug:
                  BuiltValueNullFieldError.checkNotNull(slug, r'Game', 'slug'),
              name:
                  BuiltValueNullFieldError.checkNotNull(name, r'Game', 'name'),
              backgroundImage: backgroundImage,
              rating: rating,
              ratingTop: ratingTop,
              ratings: _ratings?.build(),
              ratingsCount: ratingsCount,
              reviewsTextCount: reviewsTextCount,
              added: added,
              addedByStatus: _addedByStatus?.build(),
              metacritc: metacritc,
              playtime: playtime,
              updated: updated,
              reviewsCount: BuiltValueNullFieldError.checkNotNull(
                  reviewsCount, r'Game', 'reviewsCount'),
              platforms: _platforms?.build(),
              parentPlatforms: _parentPlatforms?.build(),
              genres: _genres?.build(),
              stores: _stores?.build(),
              tags: _tags?.build(),
              esrbRating: _esrbRating?.build(),
              shortScreenshots: _shortScreenshots?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ratings';
        _ratings?.build();

        _$failedField = 'addedByStatus';
        _addedByStatus?.build();

        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'parentPlatforms';
        _parentPlatforms?.build();
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'stores';
        _stores?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'esrbRating';
        _esrbRating?.build();
        _$failedField = 'shortScreenshots';
        _shortScreenshots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Game', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
