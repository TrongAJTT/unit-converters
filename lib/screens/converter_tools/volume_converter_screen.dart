import 'package:flutter/material.dart';
import 'package:unit_converters/controllers/volume_converter_controller.dart';
import 'package:unit_converters/services/app_logger.dart';
import 'package:unit_converters/services/function_info_service.dart';
import 'package:unit_converters/widgets/converter_tools/generic_converter_view.dart';
import 'package:unit_converters/l10n/app_localizations.dart';

class VolumeConverterScreen extends StatefulWidget {
  final bool isEmbedded;

  const VolumeConverterScreen({super.key, this.isEmbedded = false});

  @override
  State<VolumeConverterScreen> createState() => _VolumeConverterScreenState();
}

class _VolumeConverterScreenState extends State<VolumeConverterScreen> {
  late VolumeConverterController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    logInfo('VolumeConverterScreen: initState called');
    _initializeController();
  }

  Future<void> _initializeController() async {
    _controller = VolumeConverterController();
    await _controller.initialize();

    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    if (_isInitialized) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _showVolumeInfo() {
    FunctionInfo.show(context, FunctionInfoKeys.volumeConverter);
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final l10n = AppLocalizations.of(context)!;

    return ListenableBuilder(
      listenable: _controller,
      builder: (context, child) {
        return GenericConverterView(
          controller: _controller,
          isEmbedded: widget.isEmbedded,
          title: l10n.volumeConverter,
          titleIcon: Icons.rotate_90_degrees_ccw,
          onShowInfo: _showVolumeInfo,
        );
      },
    );
  }
}
