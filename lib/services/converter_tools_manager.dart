import 'package:flutter/material.dart';
import 'package:unit_converters/l10n/app_localizations.dart';
import 'package:unit_converters/services/tool_order_service.dart';
import 'package:unit_converters/utils/variables_utils.dart';
import 'package:unit_converters/widgets/generic/section_item.dart' as generic;
import 'package:unit_converters/screens/converter_tools/length_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/mass_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/temperature_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/volume_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/area_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/speed_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/time_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/data_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/weight_converter_screen.dart';
import 'package:unit_converters/screens/converter_tools/number_system_converter_screen.dart';

/// Manages the list and order of all converter tools
class ConverterToolsManager {
  /// Get all tools in the user-defined order
  static Future<List<ToolItem>> getOrderedTools(BuildContext ctx) async {
    final order = await ToolOrderService.getToolOrder();
    final allTools = _getAllTools(ctx);

    // Create a map for quick lookup
    final toolMap = {for (var tool in allTools) tool.id: tool};

    // Return tools in the saved order
    return order
        .where((id) => toolMap.containsKey(id))
        .map((id) => toolMap[id]!)
        .toList();
  }

  /// Get all available tools with default properties
  static List<ToolItem> _getAllTools(BuildContext ctx) {
    final loc = AppLocalizations.of(ctx)!;
    final isEmbedded = isDesktopContext(ctx);
    return [
      ToolItem(
        id: 'length',
        title: loc.lengthConverter,
        subtitle: loc.lengthConverterInfo,
        icon: Icons.straighten,
        color: const Color(0xFF2196F3), // Blue
        screenBuilder: () => LengthConverterNewScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'mass',
        title: loc.massConverter,
        subtitle: loc.massConverterInfo,
        icon: Icons.fitness_center,
        color: const Color(0xFFFF9800), // Orange
        screenBuilder: () => MassConverterNewScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'temperature',
        title: loc.temperatureConverter,
        subtitle: loc.temperatureConverterInfo,
        icon: Icons.thermostat,
        color: const Color(0xFFF44336), // Red
        screenBuilder: () => TemperatureConverterScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'volume',
        title: loc.volumeConverter,
        subtitle: loc.volumeConverterInfo,
        icon: Icons.local_drink,
        color: const Color(0xFF00BCD4), // Cyan
        screenBuilder: () => VolumeConverterScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'area',
        title: loc.areaConverter,
        subtitle: loc.areaConverterInfo,
        icon: Icons.crop_square,
        color: const Color(0xFF9C27B0), // Purple
        screenBuilder: () => AreaConverterScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'speed',
        title: loc.speedConverter,
        subtitle: loc.speedConverterInfo,
        icon: Icons.speed,
        color: const Color(0xFF4CAF50), // Green
        screenBuilder: () => SpeedConverterScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'time',
        title: loc.timeConverter,
        subtitle: loc.timeConverterInfo,
        icon: Icons.access_time,
        color: const Color(0xFFE91E63), // Pink
        screenBuilder: () => TimeConverterScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'data',
        title: loc.dataConverter,
        subtitle: loc.dataConverterInfo,
        icon: Icons.storage,
        color: const Color(0xFF795548), // Brown
        screenBuilder: () => DataConverterScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'weight',
        title: loc.weightConverter,
        subtitle: loc.weightConverterInfo,
        icon: Icons.scale,
        color: const Color(0xFF607D8B), // Blue Grey
        screenBuilder: () => WeightConverterScreen(isEmbedded: isEmbedded),
      ),
      ToolItem(
        id: 'numbersystem',
        title: loc.numberSystemConverter,
        subtitle: loc.numberSystemConverterInfo,
        icon: Icons.calculate,
        color: const Color(0xFF3F51B5), // Indigo
        screenBuilder: () =>
            NumberSystemConverterScreen(isEmbedded: isEmbedded),
      ),
    ];
  }

  /// Find a specific tool by ID
  static ToolItem? findToolById(String id, List<ToolItem> tools) {
    try {
      return tools.firstWhere((tool) => tool.id == id);
    } catch (e) {
      return null;
    }
  }

  /// Convert tools to SectionItem format for use in section-based layouts
  static List<generic.SectionItem> toolsToSectionItems(List<ToolItem> tools) {
    return tools
        .map(
          (tool) => generic.SectionItem(
            id: tool.id,
            title: tool.title,
            subtitle: tool.subtitle,
            icon: tool.icon,
            iconColor: tool.color,
            content: tool.screenBuilder(),
          ),
        )
        .toList();
  }
}
