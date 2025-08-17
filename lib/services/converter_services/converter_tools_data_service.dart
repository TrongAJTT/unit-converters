import '../hive_service.dart';
import '../security_service.dart';
import '../security_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:developer' as developer;

/// Constants for converter data types
class ConverterDataTypes {
  static const String state = 'state';
  static const String presets = 'presets';
  static const String cache = 'cache';
  static const String settings = 'settings';
  static const String history = 'history';
}

/// Service for managing all converter tools data using Hive
class ConverterToolsDataService {
  static final ConverterToolsDataService _instance =
      ConverterToolsDataService._internal();
  factory ConverterToolsDataService() => _instance;
  ConverterToolsDataService._internal();

  // Static getter for easier access
  static ConverterToolsDataService get instance => _instance;

  Box? _converterDataBox;
  bool _isInitialized = false;
  static const String _boxName = 'converter_tools_data';

  /// Check if service is properly initialized
  bool get isInitialized =>
      _isInitialized && _converterDataBox != null && _converterDataBox!.isOpen;

  /// Initialize the service
  Future<void> initialize() async {
    if (_isInitialized &&
        _converterDataBox != null &&
        _converterDataBox!.isOpen) {
      print('ConverterToolsDataService: Already initialized, skipping');
      return;
    }

    try {
      // Check if Data Protection is enabled and we need encryption
      final isSecurityEnabled = await SecurityService.isSecurityEnabled();

      if (isSecurityEnabled) {
        // Get encryption key if security is enabled and user is authenticated
        final securityManager = SecurityManager.instance;
        final encryptionKey = securityManager.currentEncryptionKey;

        if (encryptionKey != null) {
          // Try to open box with encryption
          print('ConverterToolsDataService: Opening encrypted box');
          try {
            _converterDataBox = await Hive.openBox<Map>(
              _boxName,
              encryptionCipher: HiveAesCipher(encryptionKey),
            );
          } catch (e) {
            // If encryption fails, might be due to existing unencrypted data
            print(
              'ConverterToolsDataService: Encryption failed, trying to clear and recreate box: $e',
            );
            try {
              // Delete the problematic box
              await Hive.deleteBoxFromDisk(_boxName);
              // Try again with encryption
              _converterDataBox = await Hive.openBox<Map>(
                _boxName,
                encryptionCipher: HiveAesCipher(encryptionKey),
              );
              print(
                'ConverterToolsDataService: Successfully recreated encrypted box',
              );
            } catch (e2) {
              print(
                'ConverterToolsDataService: Failed to recreate encrypted box, falling back to unencrypted: $e2',
              );
              _converterDataBox = await HiveService.getBox<Map>(_boxName);
            }
          }
        } else {
          // Security enabled but not authenticated
          print(
            'ConverterToolsDataService: Security enabled but no encryption key available, falling back to unencrypted',
          );
          _converterDataBox = await HiveService.getBox<Map>(_boxName);
        }
      } else {
        // No security enabled, use regular box
        print('ConverterToolsDataService: Opening unencrypted box');
        _converterDataBox = await HiveService.getBox<Map>(_boxName);
      }

      _isInitialized = true;
      print('ConverterToolsDataService initialized successfully');
    } catch (e) {
      _isInitialized = false;
      print('Failed to initialize ConverterToolsDataService: $e');
      rethrow;
    }
  }

  /// Reinitialize the service (call when security status changes)
  Future<void> reinitialize() async {
    try {
      // Close existing box if open
      if (_converterDataBox != null && _converterDataBox!.isOpen) {
        await _converterDataBox!.close();
        _converterDataBox = null;
      }

      _isInitialized = false;

      // Reinitialize with current security settings
      await initialize();
    } catch (e) {
      _isInitialized = false;
      print('Failed to reinitialize ConverterToolsDataService: $e');
      rethrow;
    }
  }

  /// Get Hive box instance
  Box get _database {
    if (!_isInitialized ||
        _converterDataBox == null ||
        !_converterDataBox!.isOpen) {
      throw Exception(
        'Converter data box is not properly initialized. Call initialize() first.',
      );
    }
    return _converterDataBox!;
  }

  /// Generate key for data storage
  String _generateKey(String toolCode, String dataType) {
    return '${toolCode}_$dataType';
  }

  /// Save data for a specific tool and data type
  Future<void> saveData({
    required String toolCode,
    required String dataType,
    required Map<String, dynamic> data,
    Map<String, dynamic>? metadata,
  }) async {
    try {
      final key = _generateKey(toolCode, dataType);
      final entry = {
        'toolCode': toolCode,
        'dataType': dataType,
        'data': data,
        'metadata': metadata ?? {},
        'lastUpdated': DateTime.now().toIso8601String(),
      };

      print('💾 SAVING - Key: $key, Tool: $toolCode, Type: $dataType');
      print('💾 Data keys: ${data.keys.toList()}');
      
      // Show card count if this is state data
      if (dataType == 'state' && data.containsKey('cards')) {
        final cards = data['cards'] as List?;
        print('💾 Number of cards being saved: ${cards?.length ?? 0}');
        if (cards != null && cards.isNotEmpty) {
          print('💾 Card names: ${cards.map((c) => c['name']).toList()}');
        }
      }
      
      await _database.put(key, entry);

      // Debug: Check total entries
      final totalEntries = _database.length;
      print('📊 Total tool entries in box: $totalEntries');
      
      // Show all keys in box
      final allKeys = _database.keys.toList();
      print('🔑 All tool keys: $allKeys');
    } catch (e) {
      print('❌ FAILED to save data for tool $toolCode: $e');
      rethrow;
    }
  }

  /// Get data for a specific tool and data type
  Future<Map<String, dynamic>?> getData({
    required String toolCode,
    required String dataType,
  }) async {
    try {
      final key = _generateKey(toolCode, dataType);
      final entry = _database.get(key);

      print('📖 LOADING - Key: $key, Tool: $toolCode, Type: $dataType');
      print('📖 Entry found: ${entry != null}');

      if (entry != null && entry is Map) {
        final data = Map<String, dynamic>.from(entry['data'] ?? {});
        print('📖 Data keys loaded: ${data.keys.toList()}');
        
        // Show card count if this is state data
        if (dataType == 'state' && data.containsKey('cards')) {
          final cards = data['cards'] as List?;
          print('📖 Number of cards loaded: ${cards?.length ?? 0}');
          if (cards != null && cards.isNotEmpty) {
            print('📖 Card names: ${cards.map((c) => c['name']).toList()}');
          }
        }
        
        return data;
      } else {
        print('📖 No data found for key: $key');
        return null;
      }
    } catch (e) {
      print('❌ FAILED to get data for tool $toolCode: $e');
      return null;
    }
  }

  /// Get all data entries for a specific tool
  Future<List<Map<String, dynamic>>> getToolData(String toolCode) async {
    try {
      final List<Map<String, dynamic>> result = [];

      for (final key in _database.keys) {
        if (key.toString().startsWith('${toolCode}_')) {
          final entry = _database.get(key);
          if (entry != null && entry is Map) {
            result.add(Map<String, dynamic>.from(entry));
          }
        }
      }

      return result;
    } catch (e) {
      print('Failed to get tool data for $toolCode: $e');
      return [];
    }
  }

  /// Delete data for a specific tool and data type
  Future<void> deleteData({
    required String toolCode,
    required String dataType,
  }) async {
    try {
      final key = _generateKey(toolCode, dataType);
      await _database.delete(key);
      print('Deleted data for tool: $toolCode, type: $dataType');
    } catch (e) {
      print('Failed to delete data for tool $toolCode: $e');
      rethrow;
    }
  }

  /// Delete all data for a specific tool
  Future<void> deleteAllToolData(String toolCode) async {
    try {
      final keysToDelete = <String>[];

      for (final key in _database.keys) {
        if (key.toString().startsWith('${toolCode}_')) {
          keysToDelete.add(key.toString());
        }
      }

      await _database.deleteAll(keysToDelete);
      print('Deleted all data for tool: $toolCode');
    } catch (e) {
      print('Failed to delete all data for tool $toolCode: $e');
      rethrow;
    }
  }

  /// Clear all converter tools data
  Future<void> clearAllData() async {
    try {
      await _database.clear();
      print('Cleared all converter tools data');
    } catch (e) {
      print('Failed to clear all data: $e');
      rethrow;
    }
  }

  /// Get metadata for a specific tool and data type
  Future<Map<String, dynamic>?> getMetadata({
    required String toolCode,
    required String dataType,
  }) async {
    try {
      final key = _generateKey(toolCode, dataType);
      final entry = _database.get(key);

      if (entry != null && entry is Map) {
        return Map<String, dynamic>.from(entry['metadata'] ?? {});
      }
      return null;
    } catch (e) {
      print('Failed to get metadata for tool $toolCode: $e');
      return null;
    }
  }

  /// Update metadata for a specific tool and data type
  Future<void> updateMetadata({
    required String toolCode,
    required String dataType,
    required Map<String, dynamic> metadata,
  }) async {
    try {
      final key = _generateKey(toolCode, dataType);
      final entry = _database.get(key);

      if (entry != null && entry is Map) {
        final updatedEntry = Map<String, dynamic>.from(entry);
        updatedEntry['metadata'] = metadata;
        updatedEntry['lastUpdated'] = DateTime.now().toIso8601String();
        await _database.put(key, updatedEntry);
      }

      print('Updated metadata for tool: $toolCode, type: $dataType');
    } catch (e) {
      print('Failed to update metadata for tool $toolCode: $e');
      rethrow;
    }
  }

  /// Get all tool codes that have data
  Future<List<String>> getAllToolCodes() async {
    try {
      final Set<String> toolCodes = <String>{};

      for (final key in _database.keys) {
        final keyString = key.toString();
        final parts = keyString.split('_');
        if (parts.length >= 2) {
          toolCodes.add(parts[0]);
        }
      }

      return toolCodes.toList();
    } catch (e) {
      print('Failed to get all tool codes: $e');
      return [];
    }
  }

  /// Get data count for a specific tool
  Future<int> getToolDataCount(String toolCode) async {
    try {
      int count = 0;

      for (final key in _database.keys) {
        if (key.toString().startsWith('${toolCode}_')) {
          count++;
        }
      }

      return count;
    } catch (e) {
      print('Failed to get data count for tool $toolCode: $e');
      return 0;
    }
  }

  /// Get total data count
  Future<int> getTotalDataCount() async {
    try {
      return _database.length;
    } catch (e) {
      print('Failed to get total data count: $e');
      return 0;
    }
  }

  /// Export all data for backup
  Future<List<Map<String, dynamic>>> exportAllData() async {
    try {
      final List<Map<String, dynamic>> result = [];

      for (final key in _database.keys) {
        final entry = _database.get(key);
        if (entry != null && entry is Map) {
          result.add(Map<String, dynamic>.from(entry));
        }
      }

      return result;
    } catch (e) {
      print('Failed to export all data: $e');
      return [];
    }
  }

  /// Convenience method to save state data
  static Future<void> saveState(
    String toolCode,
    Map<String, dynamic> stateData,
  ) async {
    final service = ConverterToolsDataService();
    await service.saveData(
      toolCode: toolCode,
      dataType: 'state',
      data: stateData,
    );
  }

  /// Convenience method to get state data
  static Future<Map<String, dynamic>?> getState(String toolCode) async {
    final service = ConverterToolsDataService();
    return await service.getData(toolCode: toolCode, dataType: 'state');
  }

  /// Convenience method to check if state data exists
  static Future<bool> hasData({
    required String toolCode,
    required String dataType,
  }) async {
    final service = ConverterToolsDataService();
    final data = await service.getData(toolCode: toolCode, dataType: dataType);
    return data != null;
  }

  /// Convenience method to get data size estimate
  static Future<int> getDataSize({
    required String toolCode,
    required String dataType,
  }) async {
    final service = ConverterToolsDataService();
    final data = await service.getData(toolCode: toolCode, dataType: dataType);
    if (data == null) return 0;

    // Rough estimate based on JSON string length
    final jsonString = data.toString();
    return jsonString.length;
  }

  /// Import data from backup
  Future<void> importData(List<Map<String, dynamic>> dataList) async {
    try {
      for (final dataMap in dataList) {
        final toolCode = dataMap['toolCode'] as String;
        final dataType = dataMap['dataType'] as String;
        final key = _generateKey(toolCode, dataType);

        await _database.put(key, dataMap);
      }

      print('Imported ${dataList.length} data entries');
    } catch (e) {
      print('Failed to import data: $e');
      rethrow;
    }
  }

  /// Convenience methods for different data types

  /// Save preset data
  static Future<void> savePresets(
    String toolCode,
    List<Map<String, dynamic>> presets,
  ) async {
    final service = ConverterToolsDataService();
    await service.saveData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.presets,
      data: {'presets': presets},
    );
  }

  /// Get preset data
  static Future<List<Map<String, dynamic>>> getPresets(String toolCode) async {
    final service = ConverterToolsDataService();
    final data = await service.getData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.presets,
    );
    if (data == null) return [];
    return List<Map<String, dynamic>>.from(data['presets'] ?? []);
  }

  /// Save cache data
  static Future<void> saveCache(
    String toolCode,
    Map<String, dynamic> cacheData,
  ) async {
    final service = ConverterToolsDataService();
    await service.saveData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.cache,
      data: cacheData,
    );
  }

  /// Get cache data
  static Future<Map<String, dynamic>?> getCache(String toolCode) async {
    final service = ConverterToolsDataService();
    return await service.getData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.cache,
    );
  }

  /// Add a single preset
  static Future<void> addPreset(
    String toolCode,
    Map<String, dynamic> preset,
  ) async {
    final existingPresets = await getPresets(toolCode);
    existingPresets.add(preset);
    await savePresets(toolCode, existingPresets);
  }

  /// Remove a preset by ID
  static Future<void> removePreset(String toolCode, String presetId) async {
    final existingPresets = await getPresets(toolCode);
    existingPresets.removeWhere((preset) => preset['id'] == presetId);
    await savePresets(toolCode, existingPresets);
  }

  /// Update a preset
  static Future<void> updatePreset(
    String toolCode,
    String presetId,
    Map<String, dynamic> updatedPreset,
  ) async {
    final existingPresets = await getPresets(toolCode);
    final index = existingPresets.indexWhere(
      (preset) => preset['id'] == presetId,
    );
    if (index != -1) {
      existingPresets[index] = updatedPreset;
      await savePresets(toolCode, existingPresets);
    }
  }

  /// Check if a preset exists
  static Future<bool> presetExists(String toolCode, String presetId) async {
    final presets = await getPresets(toolCode);
    return presets.any((preset) => preset['id'] == presetId);
  }

  /// Get preset count
  static Future<int> getPresetCount(String toolCode) async {
    final presets = await getPresets(toolCode);
    return presets.length;
  }

  /// Clear all presets
  static Future<void> clearPresets(String toolCode) async {
    await savePresets(toolCode, []);
  }

  /// Clear cache
  static Future<void> clearCache(String toolCode) async {
    final service = ConverterToolsDataService();
    await service.deleteData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.cache,
    );
  }

  /// Methods needed for unified services compatibility

  /// Save states (wrapper for backward compatibility)
  static Future<void> saveStates(
    String toolCode,
    Map<String, dynamic> states,
  ) async {
    final service = ConverterToolsDataService();
    await service.saveData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.state,
      data: states,
    );
  }

  /// Get states (wrapper for backward compatibility)
  static Future<Map<String, dynamic>?> getStates(String toolCode) async {
    final service = ConverterToolsDataService();
    return await service.getData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.state,
    );
  }

  /// Clear states (wrapper for backward compatibility)
  static Future<void> clearStates(String toolCode) async {
    final service = ConverterToolsDataService();
    await service.deleteData(
      toolCode: toolCode,
      dataType: ConverterDataTypes.state,
    );
  }

  /// Save a single preset (wrapper for backward compatibility)
  static Future<void> savePreset(
    String toolCode,
    Map<String, dynamic> preset,
  ) async {
    final existingPresets = await getPresets(toolCode);
    existingPresets.add(preset);
    await savePresets(toolCode, existingPresets);
  }

  /// Get a single preset by ID (wrapper for backward compatibility)
  static Future<Map<String, dynamic>?> getPreset(
    String toolCode,
    String presetId,
  ) async {
    final presets = await getPresets(toolCode);
    try {
      return presets.firstWhere((preset) => preset['id'] == presetId);
    } catch (e) {
      return null;
    }
  }

  /// Delete a single preset (wrapper for backward compatibility)
  static Future<void> deletePreset(String toolCode, String presetId) async {
    await removePreset(toolCode, presetId);
  }
}
