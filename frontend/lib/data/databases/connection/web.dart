import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';

const _databaseName = 'app_db';
const _sqlite3Uri = 'sqlite3.wasm';
const _driftWorkerUri = 'drift_worker.js';

QueryExecutor connect() {
  return LazyDatabase(
    () async {
      final db = await WasmDatabase.open(
        databaseName: _databaseName,
        sqlite3Uri: Uri.parse(_sqlite3Uri),
        driftWorkerUri: Uri.parse(_driftWorkerUri),
      );

      if (db.missingFeatures.isNotEmpty) {
        log('Using ${db.chosenImplementation} due to unsupported '
            'browser features: ${db.missingFeatures}');
      }

      return db.resolvedExecutor;
    },
  );
}
