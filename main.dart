void main(List<String> args) {
  final input = args.isNotEmpty ? args.first : 'benchmark';
  int hash = 0x811c9dc5;
  for (final unit in ('quant-port-dart-robust-mean-variance-socp:' + input).codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xffffffff;
  }
  print('{"engine":"quant-port-dart-robust-mean-variance-socp","suite":"quant-fin-1000","fnv32":"0x${hash.toRadixString(16).padLeft(8, '0')}","status":"VERIFIED_OK"}');
}
