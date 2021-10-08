//5 - Platform
import 'dart:io';
void main ()
{
  print(Platform.executable);
  print(Platform.numberOfProcessors);
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.script);
  print(Platform.version);
  print('------------------') ;
  print(Platform.isAndroid);
  print(Platform.isFuchsia);
  Platform.isIOS?print('IOS'):print("Not IOS");
  print(Platform.isIOS);
  print(Platform.isLinux);
  print(Platform.isMacOS);
  print(Platform.isWindows);
  print('------------------') ;
  Platform.environment.forEach((key, _) {
    print('$key: ${Platform.environment[key]}');
  });

}