import 'package:unit_converters/services/generation_history_service.dart';
import 'package:unit_converters/services/security_service.dart';
import 'package:unit_converters/services/hive_service.dart';
import 'package:unit_converters/services/converter_services/converter_tools_data_service.dart';
import 'package:unit_converters/services/app_logger.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DataMigrationService {
  /// Migrate unencrypted history data to encrypted format
  static Future<bool> migrateToEncrypted(String masterPassword) async {
    try {
      logInfo('DataMigrationService: Starting migration to encrypted format');

      // Get encryption key
      final encryptionKey = await SecurityService.getEncryptionKey(
        masterPassword,
      );
      if (encryptionKey == null) {
        logError('DataMigrationService: Could not get encryption key');
        return false;
      }

      // Get all history types
      final historyTypes = [
        'coin_flip',
        'number',
        'yes_no',
        'color',
        'time',
        'rock_paper_scissors',
        'playing_card',
        'password',
        'latin_letter',
        'dice_roll',
        'date_time',
        'date',
      ];

      int migratedCount = 0;
      final box = HiveService.historyBox;

      for (final type in historyTypes) {
        try {
          // First check if we already have encrypted data
          final existingEncrypted = box.get('encrypted_history_$type');
          if (existingEncrypted != null) {
            logInfo(
              'DataMigrationService: $type already has encrypted data, skipping',
            );
            continue;
          }

          // Get unencrypted history from the simple encrypted format
          final unencryptedData = box.get('generation_history_$type');

          if (unencryptedData != null && unencryptedData is String) {
            // Decrypt the simple encrypted data first
            String jsonString;
            try {
              jsonString = GenerationHistoryService.decryptOldFormat(
                unencryptedData,
              );
            } catch (e) {
              logWarning(
                'DataMigrationService: Could not decrypt $type data: $e',
              );
              continue;
            }

            if (jsonString.isNotEmpty) {
              // Re-encrypt with proper encryption
              final encryptedData = SecurityService.encryptString(
                jsonString,
                encryptionKey,
              );

              // Store encrypted data with new key format
              await box.put('encrypted_history_$type', encryptedData);

              migratedCount++;
              logInfo(
                'DataMigrationService: Migrated $type history to encrypted format',
              );
            }
          }
        } catch (e) {
          logWarning('DataMigrationService: Error migrating $type: $e');
          // Continue with other types
        }
      }

      logInfo(
        'DataMigrationService: Migration completed. Migrated $migratedCount history types',
      );
      return true;
    } catch (e) {
      logError('DataMigrationService: Error during migration to encrypted: $e');
      return false;
    }
  }

  /// Migrate encrypted history data back to unencrypted format
  static Future<bool> migrateToUnencrypted(String masterPassword) async {
    try {
      logInfo('DataMigrationService: Starting migration to unencrypted format');

      // Get encryption key
      final encryptionKey = await SecurityService.getEncryptionKey(
        masterPassword,
      );
      if (encryptionKey == null) {
        logError('DataMigrationService: Could not get encryption key');
        return false;
      }

      // Get all history types
      final historyTypes = [
        'coin_flip',
        'number',
        'yes_no',
        'color',
        'time',
        'rock_paper_scissors',
        'playing_card',
        'password',
        'latin_letter',
        'dice_roll',
        'date_time',
        'date',
      ];

      int migratedCount = 0;
      final box = HiveService.historyBox;

      for (final type in historyTypes) {
        try {
          // Get encrypted data
          final encryptedData = box.get('encrypted_history_$type');

          if (encryptedData != null && encryptedData is String) {
            // Decrypt the data
            final decryptedJson = SecurityService.decryptString(
              encryptedData,
              encryptionKey,
            );

            // Re-encrypt with simple encryption for old format
            final simpleEncrypted = GenerationHistoryService.encryptOldFormat(
              decryptedJson,
            );

            // Store as unencrypted data using old format
            await box.put('generation_history_$type', simpleEncrypted);

            migratedCount++;
            logInfo(
              'DataMigrationService: Migrated $type history back to unencrypted',
            );
          }
        } catch (e) {
          logWarning('DataMigrationService: Could not migrate $type: $e');
          // Continue with other types
        }
      }

      logInfo(
        'DataMigrationService: Migration completed. Migrated $migratedCount history types',
      );
      return true;
    } catch (e) {
      logError(
        'DataMigrationService: Error during migration to unencrypted: $e',
      );
      return false;
    }
  }

  /// Clear all encrypted history data
  static Future<bool> clearEncryptedData() async {
    try {
      logInfo('DataMigrationService: Clearing all encrypted history data');

      final historyTypes = [
        'coin_flip',
        'number',
        'yes_no',
        'color',
        'time',
        'rock_paper_scissors',
        'playing_card',
        'password',
        'latin_letter',
        'dice_roll',
        'date_time',
        'date',
      ];

      final box = HiveService.historyBox;
      int clearedCount = 0;

      for (final type in historyTypes) {
        try {
          // Remove encrypted data
          await box.delete('encrypted_history_$type');
          // Also remove unencrypted data
          await box.delete('generation_history_$type');
          clearedCount++;
        } catch (e) {
          logWarning('DataMigrationService: Could not clear $type: $e');
        }
      }

      logInfo('DataMigrationService: Cleared $clearedCount history types');
      return true;
    } catch (e) {
      logError('DataMigrationService: Error clearing encrypted data: $e');
      return false;
    }
  }

  /// Check if there's encrypted data available
  static Future<bool> hasEncryptedData() async {
    try {
      final historyTypes = [
        'coin_flip',
        'number',
        'yes_no',
        'color',
        'time',
        'rock_paper_scissors',
        'playing_card',
        'password',
        'latin_letter',
        'dice_roll',
        'date_time',
        'date',
      ];

      final box = HiveService.historyBox;

      for (final type in historyTypes) {
        final encryptedData = box.get('encrypted_history_$type');
        if (encryptedData != null) {
          return true;
        }
      }

      return false;
    } catch (e) {
      logError('DataMigrationService: Error checking encrypted data: $e');
      return false;
    }
  }

  /// Check if there's unencrypted data available
  static Future<bool> hasUnencryptedData() async {
    try {
      final historyTypes = [
        'coin_flip',
        'number',
        'yes_no',
        'color',
        'time',
        'rock_paper_scissors',
        'playing_card',
        'password',
        'latin_letter',
        'dice_roll',
        'date_time',
        'date',
      ];

      final box = HiveService.historyBox;

      for (final type in historyTypes) {
        final unencryptedData = box.get('generation_history_$type');
        if (unencryptedData != null) {
          return true;
        }
      }

      return false;
    } catch (e) {
      logError('DataMigrationService: Error checking unencrypted data: $e');
      return false;
    }
  }

  /// Migrate converter data when enabling Data Protection
  static Future<bool> migrateConverterDataToEncrypted() async {
    try {
      logInfo(
        'DataMigrationService: Starting converter data migration to encrypted format',
      );

      // Check if converter data box exists in unencrypted format
      const boxName = 'converter_tools_data';
      if (!Hive.isBoxOpen(boxName)) {
        logInfo(
          'DataMigrationService: No unencrypted converter data box found',
        );
        return true; // No data to migrate
      }

      final unencryptedBox = Hive.box<Map>(boxName);
      if (unencryptedBox.isEmpty) {
        logInfo('DataMigrationService: No converter data to migrate');
        return true;
      }

      // Create backup of data
      final dataBackup = <String, Map<String, dynamic>>{};
      for (final key in unencryptedBox.keys) {
        final value = unencryptedBox.get(key);
        if (value is Map) {
          dataBackup[key.toString()] = Map<String, dynamic>.from(value);
        }
      }

      logInfo(
        'DataMigrationService: Backed up ${dataBackup.length} converter data entries',
      );

      // Close and delete unencrypted box
      await unencryptedBox.close();
      await Hive.deleteBoxFromDisk(boxName);

      // The new encrypted box will be created when ConverterToolsDataService reinitializes
      // We'll restore the data after the encrypted box is ready

      // Wait a moment for the service to reinitialize
      await Future.delayed(const Duration(milliseconds: 100));

      // Restore data to encrypted box
      final converterService = ConverterToolsDataService.instance;
      int restoredCount = 0;

      for (final entry in dataBackup.entries) {
        try {
          final data = entry.value;
          final toolCode = data['toolCode'] as String? ?? 'unknown';
          final dataType = data['dataType'] as String? ?? 'unknown';
          final actualData = data['data'] as Map<String, dynamic>? ?? {};
          final metadata = data['metadata'] as Map<String, dynamic>? ?? {};

          await converterService.saveData(
            toolCode: toolCode,
            dataType: dataType,
            data: actualData,
            metadata: metadata,
          );
          restoredCount++;
        } catch (e) {
          logWarning(
            'DataMigrationService: Failed to restore data entry ${entry.key}: $e',
          );
        }
      }

      logInfo(
        'DataMigrationService: Successfully restored $restoredCount converter data entries to encrypted format',
      );
      return true;
    } catch (e) {
      logError(
        'DataMigrationService: Error migrating converter data to encrypted: $e',
      );
      return false;
    }
  }

  /// Migrate converter data when disabling Data Protection
  static Future<bool> migrateConverterDataToUnencrypted() async {
    try {
      logInfo(
        'DataMigrationService: Starting converter data migration to unencrypted format',
      );

      // Get current encrypted data
      final converterService = ConverterToolsDataService.instance;

      // Create backup of encrypted data
      final dataBackup = <String, Map<String, dynamic>>{};

      // Get all tool types and data types we know about
      final toolTypes = [
        'length_converter',
        'mass_converter',
        'temperature_converter',
        'area_converter',
        'volume_converter',
        'speed_converter',
        'time_converter',
        'data_converter',
        'number_system_converter',
      ];
      final dataTypes = ['state', 'presets', 'cache'];

      for (final toolType in toolTypes) {
        for (final dataType in dataTypes) {
          try {
            final data = await converterService.getData(
              toolCode: toolType,
              dataType: dataType,
            );
            if (data != null) {
              final key = '${toolType}_$dataType';
              dataBackup[key] = data;
            }
          } catch (e) {
            // Continue if specific data doesn't exist
          }
        }
      }

      logInfo(
        'DataMigrationService: Backed up ${dataBackup.length} converter data entries',
      );

      // Close encrypted box - we'll let the service handle this during reinitialize
      // The new unencrypted box will be created when ConverterToolsDataService reinitializes

      // Wait a moment for the service to reinitialize
      await Future.delayed(const Duration(milliseconds: 100));

      // Restore data to unencrypted box
      int restoredCount = 0;

      for (final entry in dataBackup.entries) {
        try {
          final data = entry.value;
          final toolCode = data['toolCode'] as String? ?? 'unknown';
          final dataType = data['dataType'] as String? ?? 'unknown';
          final actualData = data['data'] as Map<String, dynamic>? ?? {};
          final metadata = data['metadata'] as Map<String, dynamic>? ?? {};

          await converterService.saveData(
            toolCode: toolCode,
            dataType: dataType,
            data: actualData,
            metadata: metadata,
          );
          restoredCount++;
        } catch (e) {
          logWarning(
            'DataMigrationService: Failed to restore data entry ${entry.key}: $e',
          );
        }
      }

      logInfo(
        'DataMigrationService: Successfully restored $restoredCount converter data entries to unencrypted format',
      );
      return true;
    } catch (e) {
      logError(
        'DataMigrationService: Error migrating converter data to unencrypted: $e',
      );
      return false;
    }
  }

  /// Get migration status
  static Future<Map<String, dynamic>> getMigrationStatus() async {
    try {
      final hasEncrypted = await hasEncryptedData();
      final hasUnencrypted = await hasUnencryptedData();
      final securityEnabled = await SecurityService.isSecurityEnabled();

      return {
        'hasEncryptedData': hasEncrypted,
        'hasUnencryptedData': hasUnencrypted,
        'securityEnabled': securityEnabled,
        'migrationNeeded': securityEnabled && hasUnencrypted,
        'dataMixed': hasEncrypted && hasUnencrypted,
      };
    } catch (e) {
      logError('DataMigrationService: Error getting migration status: $e');
      return {
        'hasEncryptedData': false,
        'hasUnencryptedData': false,
        'securityEnabled': false,
        'migrationNeeded': false,
        'dataMixed': false,
        'error': e.toString(),
      };
    }
  }
}
