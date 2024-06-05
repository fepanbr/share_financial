// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assetGroupHash() => r'a78a129e4e5947d094fd0f22baab78e0bcc1855b';

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

/// See also [assetGroup].
@ProviderFor(assetGroup)
const assetGroupProvider = AssetGroupFamily();

/// See also [assetGroup].
class AssetGroupFamily extends Family<AsyncValue<AssetGroup>> {
  /// See also [assetGroup].
  const AssetGroupFamily();

  /// See also [assetGroup].
  AssetGroupProvider call(
    int assetGroupId,
  ) {
    return AssetGroupProvider(
      assetGroupId,
    );
  }

  @override
  AssetGroupProvider getProviderOverride(
    covariant AssetGroupProvider provider,
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
  String? get name => r'assetGroupProvider';
}

/// See also [assetGroup].
class AssetGroupProvider extends AutoDisposeFutureProvider<AssetGroup> {
  /// See also [assetGroup].
  AssetGroupProvider(
    int assetGroupId,
  ) : this._internal(
          (ref) => assetGroup(
            ref as AssetGroupRef,
            assetGroupId,
          ),
          from: assetGroupProvider,
          name: r'assetGroupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assetGroupHash,
          dependencies: AssetGroupFamily._dependencies,
          allTransitiveDependencies:
              AssetGroupFamily._allTransitiveDependencies,
          assetGroupId: assetGroupId,
        );

  AssetGroupProvider._internal(
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
  Override overrideWith(
    FutureOr<AssetGroup> Function(AssetGroupRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AssetGroupProvider._internal(
        (ref) => create(ref as AssetGroupRef),
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
  AutoDisposeFutureProviderElement<AssetGroup> createElement() {
    return _AssetGroupProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssetGroupProvider && other.assetGroupId == assetGroupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, assetGroupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AssetGroupRef on AutoDisposeFutureProviderRef<AssetGroup> {
  /// The parameter `assetGroupId` of this provider.
  int get assetGroupId;
}

class _AssetGroupProviderElement
    extends AutoDisposeFutureProviderElement<AssetGroup> with AssetGroupRef {
  _AssetGroupProviderElement(super.provider);

  @override
  int get assetGroupId => (origin as AssetGroupProvider).assetGroupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
