import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_feature_model.dart';
export 'app_feature_model.dart';

class AppFeatureWidget extends StatefulWidget {
  const AppFeatureWidget({
    super.key,
    required this.featureIcon,
    required this.featureTitle,
    required this.featureDesc,
  });

  final Widget? featureIcon;
  final String? featureTitle;
  final String? featureDesc;

  @override
  State<AppFeatureWidget> createState() => _AppFeatureWidgetState();
}

class _AppFeatureWidgetState extends State<AppFeatureWidget> {
  late AppFeatureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppFeatureModel());

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
          color: FlutterFlowTheme.of(context).primaryBackground,
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryText,
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
                    'Feature TItle',
                  ),
                  style: FlutterFlowTheme.of(context).displayMedium.override(
                        fontFamily: 'Usual',
                        color: FlutterFlowTheme.of(context).specialColor,
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
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
