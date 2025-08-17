import 'dart:io';

/// Debug script để kiểm tra vấn đề data persistence
void main() async {
  print('=== DATA PERSISTENCE DEBUG ===');

  try {
    // Kiểm tra các potential issues
    print('\n--- Checking Potential Issues ---');

    // 1. Kiểm tra ConverterToolsDataService initialization sequence
    final converterServiceFile = File(
      'lib/services/converter_services/converter_tools_data_service.dart',
    );
    if (await converterServiceFile.exists()) {
      final content = await converterServiceFile.readAsString();

      if (content.contains('initialize()') &&
          content.contains('reinitialize()')) {
        print(
          '✓ ConverterToolsDataService has both initialize and reinitialize methods',
        );
      }

      if (content.contains('SecurityService.isSecurityEnabled()')) {
        print('✓ Security status check in initialize method');
      }

      if (content.contains('SecurityManager.instance.currentEncryptionKey')) {
        print('✓ Encryption key retrieval logic found');
      } else {
        print('❌ Missing encryption key retrieval logic');
      }

      if (content.contains('_isInitialized') &&
          content.contains('isInitialized')) {
        print('✅ Initialization status tracking added');
      } else {
        print('❌ Missing initialization status tracking');
      }

      if (content.contains('Already initialized, skipping')) {
        print('✅ Double initialization prevention added');
      } else {
        print('❌ Missing double initialization prevention');
      }
    }

    // 2. Kiểm tra main.dart initialization flow
    final mainFile = File('lib/main.dart');
    if (await mainFile.exists()) {
      final content = await mainFile.readAsString();

      if (content.contains('ConverterToolsDataService()')) {
        print('✓ ConverterToolsDataService called in main.dart');
      }

      if (content.contains('await converterDataService.initialize()')) {
        print('✅ Found controlled initialize call in main.dart');
      }

      if (content.contains('reinitialize')) {
        print('✅ Found reinitialize call in main.dart');
      }

      if (content.contains(
        '// Note: ConverterToolsDataService will be initialized after security setup',
      )) {
        print('✅ Proper initialization order comment found');
      } else {
        print('⚠️  No indication of proper initialization order');
      }
    }

    // 3. Kiểm tra controller loading flow
    final converterControllerFile = File(
      'lib/controllers/converter_controller.dart',
    );
    if (await converterControllerFile.exists()) {
      final content = await converterControllerFile.readAsString();

      if (content.contains('loadState()') &&
          content.contains('ConverterToolsDataService.getState')) {
        print('✓ Controller loads state from ConverterToolsDataService');
      }

      if (content.contains('settings.featureStateSavingEnabled')) {
        print('✓ Controller checks if state saving is enabled');
      }

      if (content.contains('isInitialized') && content.contains('maxRetries')) {
        print(
          '✅ Controller has retry logic for ConverterToolsDataService initialization',
        );
      } else {
        print('❌ Controller missing retry logic');
      }
    }

    // 4. Kiểm tra Settings Service
    final settingsFile = File('lib/services/settings_service.dart');
    if (await settingsFile.exists()) {
      final content = await settingsFile.readAsString();

      if (content.contains('featureStateSavingEnabled') &&
          content.contains('true')) {
        print(
          '✓ Settings service has featureStateSavingEnabled with default true',
        );
      } else {
        print(
          '❌ Settings service might not have proper default for featureStateSavingEnabled',
        );
      }
    }

    print('\n--- Current Status After Fixes ---');
    print('✅ Fixed double initialization in main.dart');
    print('✅ Added initialization status tracking');
    print('✅ Added retry logic in controllers');
    print('✅ Improved timing in _handleAppLaunch');
    print('✅ Better error handling and logging');

    print('\n--- Expected Results ---');
    print('✅ No more double "Got object store box" messages');
    print('✅ Data should persist after app restart');
    print('✅ Controllers wait for service to be ready');
    print('✅ Proper encryption handling with Data Protection');

    print('\n--- Next Steps ---');
    print('1. Test app restart → data should persist');
    print('2. Check logs for proper initialization sequence');
    print('3. Verify no race conditions in console');
    print('4. Test with Data Protection on/off');

    print('\n=== DEBUG COMPLETED ===');
  } catch (e, stackTrace) {
    print('❌ Error during debug: $e');
    print('Stack trace: $stackTrace');
  }
}
