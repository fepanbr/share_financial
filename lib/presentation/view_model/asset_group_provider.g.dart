// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$assetGroupList2Hash() => r'fe48a16becf2a2b1b6f820d7c5b7085f168359ca';

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

abstract class _$AssetGroupList2
    extends BuildlessAutoDisposeAsyncNotifier<AssetGroup> {
  late final int assetGroupId;

  FutureOr<AssetGroup> build(
    int assetGroupId,
  );
}

/// See also [AssetGroupList2].
@ProviderFor(AssetGroupList2)
const assetGroupList2Provider = AssetGroupList2Family();

/// See also [AssetGroupList2].
class AssetGroupList2Family extends Family<AsyncValue<AssetGroup>> {
  /// See also [AssetGroupList2].
  const AssetGroupList2Family();

  /// See also [AssetGroupList2].
  AssetGroupList2Provider call(
    int assetGroupId,
  ) {
    return AssetGroupList2Provider(
      assetGroupId,
    );
  }

  @override
  AssetGroupList2Provider getProviderOverride(
    covariant AssetGroupList2Provider provider,
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
  String? get name => r'assetGroupList2Provider';
}

/// See also [AssetGroupList2].
class AssetGroupList2Provider
    extends AutoDisposeAsyncNotifierProviderImpl<AssetGroupList2, AssetGroup> {
  /// See also [AssetGroupList2].
  AssetGroupList2Provider(
    int assetGroupId,
  ) : this._internal(
          () => AssetGroupList2()..assetGroupId = assetGroupId,
          from: assetGroupList2Provider,
          name: r'assetGroupList2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$assetGroupList2Hash,
          dependencies: AssetGroupList2Family._dependencies,
          allTransitiveDependencies:
              AssetGroupList2Family._allTransitiveDependencies,
          assetGroupId: assetGroupId,
        );

  AssetGroupList2Provider._internal(
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
    covariant AssetGroupList2 notifier,
  ) {
    return notifier.build(
      assetGroupId,
    );
  }

  @override
  Override overrideWith(AssetGroupList2 Function() create) {
    return ProviderOverride(
      origin: this,
      override: AssetGroupList2Provider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<AssetGroupList2, AssetGroup>
      createElement() {
    return _AssetGroupList2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AssetGroupList2Provider &&
        other.assetGroupId == assetGroupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, assetGroupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AssetGroupList2Ref on AutoDisposeAsyncNotifierProviderRef<AssetGroup> {
  /// The parameter `assetGroupId` of this provider.
  int get assetGroupId;
}

class _AssetGroupList2ProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AssetGroupList2, AssetGroup>
    with AssetGroupList2Ref {
  _AssetGroupList2ProviderElement(super.provider);

  @override
  int get assetGroupId => (origin as AssetGroupList2Provider).assetGroupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
