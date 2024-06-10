// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assetListHash() => r'd0d76cd97be81add58d5336937a07ad642b00839';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AssetList
    extends BuildlessAutoDisposeAsyncNotifier<AssetGroup> {
  late final int assetGroupId;

  FutureOr<AssetGroup> build(
    int assetGroupId,
  );
}

/// See also [AssetList].
@ProviderFor(AssetList)
const assetListProvider = AssetListFamily();

/// See also [AssetList].
class AssetListFamily extends Family<AsyncValue<AssetGroup>> {
  /// See also [AssetList].
  const AssetListFamily();

  /// See also [AssetList].
  AssetListProvider call(
    int assetGroupId,
  ) {
    return AssetListProvider(
      assetGroupId,
    );
  }

  @override
  AssetListProvider getProviderOverride(
    covariant AssetListProvider provider,
  ) {
    return call(
      provider.assetGroupId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'assetListProvider';
}

/// See also [AssetList].
class AssetListProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AssetList, AssetGroup> {
  /// See also [AssetList].
  AssetListProvider(
    int assetGroupId,
  ) : this._internal(
          () => AssetList()..assetGroupId = assetGroupId,
          from: assetListProvider,
          name: r'assetListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assetListHash,
          dependencies: AssetListFamily._dependencies,
          allTransitiveDependencies: AssetListFamily._allTransitiveDependencies,
          assetGroupId: assetGroupId,
        );

  AssetListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.assetGroupId,
  }) : super.internal();

  final int assetGroupId;

  @override
  FutureOr<AssetGroup> runNotifierBuild(
    covariant AssetList notifier,
  ) {
    return notifier.build(
      assetGroupId,
    );
  }

  @override
  Override overrideWith(AssetList Function() create) {
    return ProviderOverride(
      origin: this,
      override: AssetListProvider._internal(
        () => create()..assetGroupId = assetGroupId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        assetGroupId: assetGroupId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AssetList, AssetGroup>
      createElement() {
    return _AssetListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssetListProvider && other.assetGroupId == assetGroupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, assetGroupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AssetListRef on AutoDisposeAsyncNotifierProviderRef<AssetGroup> {
  /// The parameter `assetGroupId` of this provider.
  int get assetGroupId;
}

class _AssetListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AssetList, AssetGroup>
    with AssetListRef {
  _AssetListProviderElement(super.provider);

  @override
  int get assetGroupId => (origin as AssetListProvider).assetGroupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
