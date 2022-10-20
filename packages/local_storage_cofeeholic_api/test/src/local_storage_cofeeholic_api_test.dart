// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:local_storage_cofeeholic_api/local_storage_cofeeholic_api.dart';
import 'package:local_storage_cofeeholic_api/src/services/internet_services.dart';

class FakeApi extends Fake implements Api {}

void main() {
  group('LocalStorageCofeeholicApi', () {
    test('can be instantiated', () {
      expect(LocalStorageCofeeholicApi(FakeApi()), isNotNull);
    });
  });
}
