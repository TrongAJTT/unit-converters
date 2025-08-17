import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converters/parsers/markdown_info_parser.dart';
import 'package:unit_converters/services/app_logger.dart';
import 'package:unit_converters/utils/snackbar_utils.dart';
import 'package:unit_converters/widgets/generic/generic_settings_helper.dart';
import 'package:unit_converters/widgets/generic_function_info_screen.dart';

class FunctionInfo {
  static Future<void> show(BuildContext context, String featureName) async {
    late String path;
    try {
      // Get the locale to determine the language
      final locale = Localizations.localeOf(context);
      final langCode = locale.languageCode; // 'vi' or 'en'

      // Load the markdown file based on featureName and language
      path = 'assets/func_info/${featureName}_$langCode.md';
      final content = await rootBundle.loadString(path);

      // Parse the markdown content
      final parser = MarkdownInfoParser();
      final infoPage = parser.parse(content);

      // Show the info page in a dialog
      if (context.mounted) {
        GenericSettingsHelper.showSettings(
          context,
          GenericSettingsConfig<SingleChildScrollView>(
            title: infoPage.title,
            settingsLayout: GenericInfoScreen(page: infoPage),
            onSettingsChanged: (newInfo) {
              // Handle any changes if needed
            },
            showActions: true,
            isCompact: false,
            // preferredSize: const Size.fromHeight(600), // Dialog size
            barrierDismissible: true,
          ),
        );
      }
    } catch (e) {
      // Handle errors gracefully
      logError('Error showing function info: $e');
      if (context.mounted) {
        SnackBarUtils.showTyped(
          context,
          'Could not load information for $path.',
          SnackBarType.error,
        );
      }
    }
  }

  static Widget buildSectionsFromText(String text) {
    try {
      final parser = MarkdownInfoParser();
      final infoSections = parser.parseSections(text);
      return GenericInfoSectionList(sections: infoSections);
    } catch (e) {
      logError('Error parsing function info text: $e');
      return Center(
        child: Text(
          'Error loading information. Details: $e',
          style: const TextStyle(color: Colors.red),
        ),
      );
    }
  }
}

class FunctionInfoKeys {
  static const String p2lanDataTransfer = 'p2lanDataTransfer';

  static const String currencyConverter = 'currencyConverter';
  static const String lengthConverter = 'lengthConverter';
  static const String weightConverter = 'weightConverter';
  static const String temperatureConverter = 'temperatureConverter';
  static const String massConverter = 'massConverter';
  static const String speedConverter = 'speedConverter';
  static const String areaConverter = 'areaConverter';
  static const String volumeConverter = 'volumeConverter';
  static const String timeConverter = 'timeConverter';
  static const String powerConverter = 'powerConverter';
  static const String energyConverter = 'energyConverter';
  static const String pressureConverter = 'pressureConverter';
  static const String dataConverter = 'dataConverter';
  static const String angleConverter = 'angleConverter';
  static const String frequencyConverter = 'frequencyConverter';
  static const String numberSystemConverter = 'numberSystemConverter';
}
