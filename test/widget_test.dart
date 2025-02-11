import 'package:firstflutter/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("Hello", (WidgetTester tester) async{
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Scaffold), findsOneWidget);

  });
}
