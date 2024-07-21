// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_generation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gStateHash() => r'7ccdacb016fab2894413745b936f82987f9f72cf';

/// See also [gState].
@ProviderFor(gState)
final gStateProvider = AutoDisposeProvider<String>.internal(
  gState,
  name: r'gStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateRef = AutoDisposeProviderRef<String>;
String _$gStateFutureHash() => r'85af272de0fee865e6a50f3ac1fe85cadfd812fc';

/// See also [gStateFuture].
@ProviderFor(gStateFuture)
final gStateFutureProvider = AutoDisposeFutureProvider<int>.internal(
  gStateFuture,
  name: r'gStateFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gStateFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFutureRef = AutoDisposeFutureProviderRef<int>;
String _$gStateFuture2Hash() => r'922f8924f34be25b1d1a128867f80ae0e6524174';

/// See also [gStateFuture2].
@ProviderFor(gStateFuture2)
final gStateFuture2Provider = FutureProvider<int>.internal(
  gStateFuture2,
  name: r'gStateFuture2Provider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gStateFuture2Hash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GStateFuture2Ref = FutureProviderRef<int>;
String _$gStatemultiplyHash() => r'3aaf75d0c021940c8b3ea19b5701d055507029b7';

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

/// See also [gStatemultiply].
@ProviderFor(gStatemultiply)
const gStatemultiplyProvider = GStatemultiplyFamily();

/// See also [gStatemultiply].
class GStatemultiplyFamily extends Family<int> {
  /// See also [gStatemultiply].
  const GStatemultiplyFamily();

  /// See also [gStatemultiply].
  GStatemultiplyProvider call({
    required int num1,
    required int num2,
  }) {
    return GStatemultiplyProvider(
      num1: num1,
      num2: num2,
    );
  }

  @override
  GStatemultiplyProvider getProviderOverride(
    covariant GStatemultiplyProvider provider,
  ) {
    return call(
      num1: provider.num1,
      num2: provider.num2,
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
  String? get name => r'gStatemultiplyProvider';
}

/// See also [gStatemultiply].
class GStatemultiplyProvider extends AutoDisposeProvider<int> {
  /// See also [gStatemultiply].
  GStatemultiplyProvider({
    required int num1,
    required int num2,
  }) : this._internal(
          (ref) => gStatemultiply(
            ref as GStatemultiplyRef,
            num1: num1,
            num2: num2,
          ),
          from: gStatemultiplyProvider,
          name: r'gStatemultiplyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$gStatemultiplyHash,
          dependencies: GStatemultiplyFamily._dependencies,
          allTransitiveDependencies:
              GStatemultiplyFamily._allTransitiveDependencies,
          num1: num1,
          num2: num2,
        );

  GStatemultiplyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.num1,
    required this.num2,
  }) : super.internal();

  final int num1;
  final int num2;

  @override
  Override overrideWith(
    int Function(GStatemultiplyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GStatemultiplyProvider._internal(
        (ref) => create(ref as GStatemultiplyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        num1: num1,
        num2: num2,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int> createElement() {
    return _GStatemultiplyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GStatemultiplyProvider &&
        other.num1 == num1 &&
        other.num2 == num2;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, num1.hashCode);
    hash = _SystemHash.combine(hash, num2.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GStatemultiplyRef on AutoDisposeProviderRef<int> {
  /// The parameter `num1` of this provider.
  int get num1;

  /// The parameter `num2` of this provider.
  int get num2;
}

class _GStatemultiplyProviderElement extends AutoDisposeProviderElement<int>
    with GStatemultiplyRef {
  _GStatemultiplyProviderElement(super.provider);

  @override
  int get num1 => (origin as GStatemultiplyProvider).num1;
  @override
  int get num2 => (origin as GStatemultiplyProvider).num2;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
