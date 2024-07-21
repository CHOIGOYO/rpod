import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

//  1) 어떤 프로바이더를 사용할지 결정할 고민 할 필요 없도록
// final _testProvider = Provider<String>((ref) {
//   return 'Hello Code Generation';
// });
@riverpod
String gState(GStateRef ref) {
  return 'Hello Code Generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref) async {
  // AutoDispose 와 같게 동작함
  return await Future.delayed(const Duration(seconds: 3), () {
    return 10;
  });
}

// 1-1) 일반 프로바이더
@Riverpod(
    // 값 유지 여부를 명시적으로 표시 AutoDispose를 하지 않도록 설정할 수 있다
    keepAlive: true)
Future<int> gStateFuture2(GStateFuture2Ref ref) async {
  return await Future.delayed(const Duration(seconds: 3), () {
    return 20;
  });
}

//  2) Parameter -> family 에 들어가는 파라미터를 일반 함수처럼 사용할 수 있도록

// class Parameter {
//   int num1;
//   int num2;
//   Parameter({required this.num1, required this.num2});
// }

// final testFamilyProvider = Provider.family<int, Parameter>((ref, param) {
//   return param.num1 * param.num2;
// });
@riverpod
int gStatemultiply(GStatemultiplyRef ref,
    {required int num1, required int num2}) {
  // 일반 함수 형태로 Provider.family에 parameter를 전달할 수 있음
  return num1 * num2;
}
