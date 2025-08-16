import 'package:flutter/material.dart';
import 'package:unit_converters/controllers/weight_converter_controller.dart';
import 'package:unit_converters/services/function_info_service.dart';
import 'package:unit_converters/widgets/converter_tools/generic_converter_view.dart';
import 'package:unit_converters/l10n/app_localizations.dart';

class WeightConverterScreen extends StatefulWidget {
  final bool isEmbedded;

  const WeightConverterScreen({super.key, this.isEmbedded = false});

  @override
  State<WeightConverterScreen> createState() => _WeightConverterScreenState();
}

class _WeightConverterScreenState extends State<WeightConverterScreen> {
  late WeightConverterController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  Future<void> _initializeController() async {
    _controller = WeightConverterController();
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

  void _showWeightInfo() {
    FunctionInfo.show(context, FunctionInfoKeys.weightConverter);
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
          title: l10n.weightConverter,
          titleIcon: Icons.fitness_center,
          onShowInfo: _showWeightInfo,
        );
      },
    );
  }
}
