import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    // provider 업데이트 될 때마다 마다 호출
    print(
        'didUpdateProvider :: provider: $provider, previousValue: $previousValue, newValue: $newValue');
  }

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) {
    // provider가 추가될 때마다 호출
    print('didAddProvider :: provider: $provider, value: $value');
  }

  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    // provider가 삭제될 때마다 호출
    print('didDisposeProvider :: provider: $provider, container: $container');
  }
}
