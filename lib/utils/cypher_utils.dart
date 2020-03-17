typedef AlterCodeUnit = int Function(int codeUnit);

int encodeCodeUnit(int codeUnit) => codeUnit + 1;
int decodeCodeUnit(int codeUnit) => codeUnit - 1;

String alter(String msg, {AlterCodeUnit operation}) => String.fromCharCodes(msg.codeUnits.map(operation));