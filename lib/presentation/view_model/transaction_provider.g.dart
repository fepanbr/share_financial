// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transactionListHash() => r'4fd986a5cb276d2d69c598ec22800afc971c96e2';

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

abstract class _$TransactionList
    extends BuildlessAutoDisposeAsyncNotifier<List<Transaction>> {
  late final DateTime date;

  FutureOr<List<Transaction>> build(
    DateTime date,
  );
}

/// See also [TransactionList].
@ProviderFor(TransactionList)
const transactionListProvider = TransactionListFamily();

/// See also [TransactionList].
class TransactionListFamily extends Family<AsyncValue<List<Transaction>>> {
  /// See also [TransactionList].
  const TransactionListFamily();

  /// See also [TransactionList].
  TransactionListProvider call(
    DateTime date,
  ) {
    return TransactionListProvider(
      date,
    );
  }

  @override
  TransactionListProvider getProviderOverride(
    covariant TransactionListProvider provider,
  ) {
    return call(
      provider.date,
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
  String? get name => r'transactionListProvider';
}

/// See also [TransactionList].
class TransactionListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TransactionList, List<Transaction>> {
  /// See also [TransactionList].
  TransactionListProvider(
    DateTime date,
  ) : this._internal(
          () => TransactionList()..date = date,
          from: transactionListProvider,
          name: r'transactionListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$transactionListHash,
          dependencies: TransactionListFamily._dependencies,
          allTransitiveDependencies:
              TransactionListFamily._allTransitiveDependencies,
          date: date,
        );

  TransactionListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final DateTime date;

  @override
  FutureOr<List<Transaction>> runNotifierBuild(
    covariant TransactionList notifier,
  ) {
    return notifier.build(
      date,
    );
  }

  @override
  Override overrideWith(TransactionList Function() create) {
    return ProviderOverride(
      origin: this,
      override: TransactionListProvider._internal(
        () => create()..date = date,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TransactionList, List<Transaction>>
      createElement() {
    return _TransactionListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TransactionListProvider && other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TransactionListRef
    on AutoDisposeAsyncNotifierProviderRef<List<Transaction>> {
  /// The parameter `date` of this provider.
  DateTime get date;
}

class _TransactionListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TransactionList,
        List<Transaction>> with TransactionListRef {
  _TransactionListProviderElement(super.provider);

  @override
  DateTime get date => (origin as TransactionListProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
