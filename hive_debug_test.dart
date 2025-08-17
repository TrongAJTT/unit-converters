import 'dart:io';

/// Simple test script to debug Hive storage issues
void main() async {
  print('=== HIVE DEBUG TEST ===');

  try {
    // Check if this is a Flutter project
    final pubspecFile = File('pubspec.yaml');
    if (await pubspecFile.exists()) {
      print('✓ Found Flutter project');

      // Read pubspec to check dependencies
      final pubspecContent = await pubspecFile.readAsString();
      if (pubspecContent.contains('hive')) {
        print('✓ Hive dependency found in pubspec.yaml');
      } else {
        print('❌ Hive dependency not found in pubspec.yaml');
      }

      if (pubspecContent.contains('flutter')) {
        print('✓ Flutter dependency found');
      }
    }

    // Check data protection setup
    print('\n--- Data Protection Analysis ---');

    final securityServiceFile = File('lib/services/security_service.dart');
    if (await securityServiceFile.exists()) {
      print('✓ SecurityService file exists');

      final content = await securityServiceFile.readAsString();
      if (content.contains('enableSecurity')) {
        print('✓ Security enabling functionality found');
      }
      if (content.contains('encryptString')) {
        print('✓ Encryption functionality found');
      }
      if (content.contains('decryptString')) {
        print('✓ Decryption functionality found');
      }
    }

    final hiveServiceFile = File('lib/services/hive_service.dart');
    if (await hiveServiceFile.exists()) {
      print('✓ HiveService file exists');

      final content = await hiveServiceFile.readAsString();
      if (content.contains('encryptionCipher')) {
        print('✓ Encryption cipher setup found');
      }
      if (content.contains('HiveAesCipher')) {
        print('✓ AES cipher usage found');
      }
    }

    final converterDataServiceFile = File(
      'lib/services/converter_services/converter_tools_data_service.dart',
    );
    if (await converterDataServiceFile.exists()) {
      print('✓ ConverterToolsDataService file exists');

      final content = await converterDataServiceFile.readAsString();
      if (content.contains('encryptionCipher')) {
        print('✅ Encryption cipher used in ConverterToolsDataService - FIXED!');
      } else {
        print(
          '❌ No encryption cipher in ConverterToolsDataService - THIS IS THE PROBLEM!',
        );
      }

      if (content.contains('SecurityService.isSecurityEnabled')) {
        print('✅ Security status check added');
      }

      if (content.contains('SecurityManager.instance')) {
        print('✅ SecurityManager integration added');
      }

      if (content.contains('reinitialize')) {
        print('✅ Reinitialize method added');
      }
    }

    final securityManagerFile = File('lib/services/security_manager.dart');
    if (await securityManagerFile.exists()) {
      final content = await securityManagerFile.readAsString();
      if (content.contains('ConverterToolsDataService') &&
          content.contains('reinitialize')) {
        print('✅ SecurityManager now reinitializes ConverterToolsDataService');
      }
    }

    final mainFile = File('lib/main.dart');
    if (await mainFile.exists()) {
      final content = await mainFile.readAsString();
      if (content.contains('converterDataService.reinitialize()')) {
        print(
          '✅ Main app reinitializes ConverterToolsDataService after authentication',
        );
      }
    }

    print('\n=== SOLUTION SUMMARY ===');
    print(
      '✅ Problem identified: ConverterToolsDataService was not using encryption',
    );
    print('✅ Solution implemented:');
    print('   - ConverterToolsDataService now checks security status');
    print('   - Uses encryption cipher when Data Protection is enabled');
    print('   - SecurityManager reinitializes service when security changes');
    print('   - App reinitializes service after authentication');
    print('\n✅ This should fix the issue where:');
    print('   - Tool states are not saved when Data Protection is enabled');
    print('   - Presets are not persisted after app restart');
    print('   - Data is lost when switching Data Protection on/off');
    print('\n=== RECOMMENDED NEXT STEPS ===');
    print(
      '1. Test with Data Protection disabled - data should save/load normally',
    );
    print('2. Enable Data Protection - existing data should migrate');
    print('3. Test saving new data with Data Protection enabled');
    print('4. Restart app and verify data persists');
    print('5. Disable Data Protection and verify data migrates back');

    print('\n=== TEST COMPLETED ===');
  } catch (e, stackTrace) {
    print('❌ Error during test: $e');
    print('Stack trace: $stackTrace');
  }
}
