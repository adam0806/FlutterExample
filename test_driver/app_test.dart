import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

//test demo 集成測試運行
//flutter driver --target=example/lib/demo/demo2/app.dart 會創建應用安裝在設備(會說找不到dart)
void main(){
  group('App', (){
    FlutterDriver driver;

    final actionChip = find.byValueKey('actionChip');
    final actionChipLabelText = find.byValueKey('actionChipLabelText');

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if(driver != null){
        driver.close();
      }
    });

    test('start at 0', () async {
      expect(await driver.getText(actionChipLabelText), '0');
    });

    test('increments the counter', () async {
      await driver.tap(actionChip);
      expect(await driver.getText(actionChipLabelText), '1');
    });
  });
}