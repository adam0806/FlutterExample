import 'package:flutter/material.dart';
import 'package:flutter_app/demo/demo2/test_demo.dart';
import 'package:flutter_test/flutter_test.dart';

//flutter test 全測試
//flutter test test/adam_demo_test.dart 測試單一檔案
void main(){
  test('should return hello + something.', (){
    var string = AdamTestDemo.greet('adam');
    expect(string, 'hello adam');
  });

  testWidgets('widget testing demo', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TestDemo(),
      )
    );
    
    final labelTest = find.text('hello');//找widget裡有沒有text包含hello
    
//    expect(labelTest, findsNothing);//預期要找不到, 若找到了會出現失敗
//    expect(labelTest, findsOneWidget);
    expect(labelTest, findsNWidgets(1));

    final actionChipLabelText = find.text('0');
    expect(actionChipLabelText, findsOneWidget);

    final actionChip = find.byType(ActionChip);
    await tester.tap(actionChip);//按
    await tester.pump();//state變化, 重建widget

    final actionChipLabelTextAfterTap = find.text('1');
    expect(actionChipLabelTextAfterTap, findsOneWidget);
    expect(actionChipLabelText, findsNothing);
  });
}