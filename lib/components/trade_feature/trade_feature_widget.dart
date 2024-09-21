import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'trade_feature_model.dart';
export 'trade_feature_model.dart';

class TradeFeatureWidget extends StatefulWidget {
  const TradeFeatureWidget({
    super.key,
    required this.featureIcon,
    required this.featureTitle,
    required this.featureDesc,
  });

  final Widget? featureIcon;
  final String? featureTitle;
  final String? featureDesc;

  @override
  State<TradeFeatureWidget> createState() => _TradeFeatureWidgetState();
}

class _TradeFeatureWidgetState extends State<TradeFeatureWidget> {
  late TradeFeatureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TradeFeatureModel());

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
              ? (MediaQuery.sizeOf(context).width * 0.18)
              : valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width >=
                          FFAppState().desktopThreshold
                      ? (MediaQuery.sizeOf(context).width * 0.26)
                      : (MediaQuery.sizeOf(context).width * 0.7),
                  259.0,
                ),
          259.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          border: Border.all(
            color: FlutterFlowTheme.of(context).black600,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.featureIcon!,
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.featureTitle,
                    'Feature Title',
                  ),
                  style: FlutterFlowTheme.of(context).displayMedium.override(
                        fontFamily: 'Usual',
                        color: FlutterFlowTheme.of(context).error,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.featureDesc,
                    'Feature Description',
                  ),
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Usual',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 6.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFDADADA),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
