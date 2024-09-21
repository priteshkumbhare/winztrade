import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'trade_steps_model.dart';
export 'trade_steps_model.dart';

class TradeStepsWidget extends StatefulWidget {
  const TradeStepsWidget({
    super.key,
    required this.stepImage,
    required this.stepTitle,
    required this.stepDesc,
  });

  final String? stepImage;
  final String? stepTitle;
  final String? stepDesc;

  @override
  State<TradeStepsWidget> createState() => _TradeStepsWidgetState();
}

class _TradeStepsWidgetState extends State<TradeStepsWidget> {
  late TradeStepsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TradeStepsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: valueOrDefault<double>(
          MediaQuery.sizeOf(context).width >= FFAppState().desktopHighThreshold
              ? (MediaQuery.sizeOf(context).width * 0.14)
              : valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width >=
                          FFAppState().desktopThreshold
                      ? (MediaQuery.sizeOf(context).width * 0.2)
                      : (MediaQuery.sizeOf(context).width * 0.54),
                  212.0,
                ),
          212.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.stepImage!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  (widget.stepTitle!).toUpperCase(),
                  'STEP TITLE',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).displayMedium.override(
                      fontFamily: 'Usual',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.stepDesc,
                  'Step Description',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Usual',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
