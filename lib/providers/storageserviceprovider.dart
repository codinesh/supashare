//Services
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../services/local_storage/key_value_storage_service.dart';

final keyValueStorageServiceProvider = Provider<KeyValueStorageService>(
  (ref) => KeyValueStorageService(),
);
